package com.ms.controller;

import com.jfinal.core.Controller;
import com.jfinal.upload.UploadFile;

public class FileUpload extends Controller {
	public void upload(){
		UploadFile file= getFile("image");
		String fileName=file.getFileName();
		System.out.println(fileName);
	
	}

}
