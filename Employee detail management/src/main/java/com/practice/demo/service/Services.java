package com.practice.demo.service;

import java.security.MessageDigest;

import org.springframework.stereotype.Service;

//-----------Password encription------------

@Service
public class Services {
	
	public String getEncodedPass(String originalPass) {
		
		StringBuilder hashPass = new StringBuilder();
		
		try {
			
			MessageDigest msgDigest = MessageDigest.getInstance("MD5");
			msgDigest.update(originalPass.getBytes());
			byte[] res=msgDigest.digest();
						
			for(byte b: res) {
				hashPass.append(String.format("%02x", b));
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return hashPass.toString();
		
	}

}
