package kr.co.util;

import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {

  private static final Logger logger = 
      LoggerFactory.getLogger(UploadFileUtils.class);

//  public static String uploadFile(String uploadPath, 
//      String originalName, 
//      byte[] fileData)throws Exception{
//    
//    return null;
//  }
//  

  
  public static String uploadFile(String uploadPath, 
                              String originalName, 
                              byte[] fileData)throws Exception{
    
    UUID uid = UUID.randomUUID();
    
    String savedName = uid.toString() +"_"+originalName;
    
    String savedPath = calcPath(uploadPath);
    
    File target = new File(uploadPath +savedPath,savedName);
    
    FileCopyUtils.copy(fileData, target);
    
    String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
    
    String uploadedFileName = null;
    
    if(MediaUtils.getMediaType(formatName) != null){
      uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
    }else{
      uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
    }
    
    return uploadedFileName;
    
  }
  
  private static  String makeIcon(String uploadPath, 
      String path, 
      String fileName)throws Exception{

    String iconName = 
        uploadPath + path + File.separator+ fileName;
    
    return iconName.substring(
        uploadPath.length()).replace(File.separatorChar, '/');
  }
  
  
  private static  String makeThumbnail(
              String uploadPath, 
              String path, 
              String fileName)throws Exception{
            
    BufferedImage sourceImg = 
        ImageIO.read(new File(uploadPath + path, fileName));
    
    
    
    
        // first get the width and the height of the image
        int originWidth = sourceImg.getWidth();
        int originHeight = sourceImg.getHeight();
        RenderedImage destImg = null;
        // let us check if we have to scale the image
        if (originWidth <= 100 && originHeight <= 100) {
            // we don't have to scale the image, just return the origin
//        	BufferedImage inputImage = sourceImg;
        	destImg = Scalr.resize(sourceImg, Scalr.Method.QUALITY, Scalr.Mode.AUTOMATIC, 100);
        }

        // Scale in respect to width or height?
        Scalr.Mode scaleMode = null;

        // find out which side is the shortest
        int maxSize = 0;
        if (originHeight > originWidth) {
            // scale to width
            scaleMode = Scalr.Mode.FIT_TO_WIDTH;
            maxSize = 100;
        } else if (originWidth >= originHeight) {
            scaleMode = Scalr.Mode.FIT_TO_HEIGHT;
            maxSize = 100;
        }

        // Scale the image to given size

        // okay, now let us check that both sides are fitting to our result scaling
        if (scaleMode.equals(Scalr.Mode.FIT_TO_WIDTH) && sourceImg.getHeight() > 100) {
            // the height is too large, resize again
        	destImg = Scalr.resize(sourceImg, Scalr.Method.QUALITY, Scalr.Mode.FIT_TO_HEIGHT, 100);
        } else if (scaleMode.equals(Scalr.Mode.FIT_TO_HEIGHT) && sourceImg.getWidth() > 100) {
            // the width is too large, resize again
        	destImg = Scalr.resize(sourceImg, Scalr.Method.QUALITY, Scalr.Mode.FIT_TO_WIDTH, 100);
        }
    
    
    
    
    
    
    
//    BufferedImage destImg = 
//        Scalr.resize(sourceImg, 
//            Scalr.Method.AUTOMATIC, 
//            Scalr.Mode.FIT_TO_HEIGHT,100);
    
    String thumbnailName = 
        uploadPath + path + File.separator +"s_"+ fileName;
    
    File newFile = new File(thumbnailName);
    String formatName = 
        fileName.substring(fileName.lastIndexOf(".")+1);
    
    
    
	ImageIO.write(destImg, formatName.toUpperCase(), newFile);
    return thumbnailName.substring(
        uploadPath.length()).replace(File.separatorChar, '/');
  } 
  
  
  private static String calcPath(String uploadPath){
    
    Calendar cal = Calendar.getInstance();
    
    String yearPath = File.separator+cal.get(Calendar.YEAR);
    
    String monthPath = yearPath + 
        File.separator + 
        new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);

    String datePath = monthPath + 
        File.separator + 
        new DecimalFormat("00").format(cal.get(Calendar.DATE));
    
    makeDir(uploadPath, yearPath,monthPath,datePath);
    
    logger.info(datePath);
    
    return datePath;
  }
  
  
  private static void makeDir(String uploadPath, String... paths){
    
    if(new File(paths[paths.length-1]).exists()){
      return;
    }
    
    for (String path : paths) {
      
      File dirPath = new File(uploadPath + path);
      
      if(! dirPath.exists() ){
        dirPath.mkdir();
      } 
    }
  }
  
  
}
