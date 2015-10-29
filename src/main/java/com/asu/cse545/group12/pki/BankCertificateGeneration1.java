package com.asu.cse545.group12.pki;

import java.io.FileOutputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import sun.security.x509.CertAndKeyGen;
import sun.security.x509.X500Name;
public class BankCertificateGeneration1 {

    public static void main(String[] args){
        try{
                     
              CertAndKeyGen keyGen=new CertAndKeyGen("RSA","SHA1WithRSA",null);
              keyGen.generate(1024);             
              X509Certificate[] chain=new X509Certificate[1];
              chain[0]=keyGen.getSelfCertificate(new X500Name("CN=BankOfTempe"), (long)365*24*3600);
              serializeSecurityobject(keyGen.getPrivateKey());
              serializeSecurityobject(chain[0]);
              serializeSecurityobject(keyGen.getPublicKey());     
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    

    
    public static void serializeSecurityobject(Object key){
        String fileName="";
       
        
        try{
        	if(key instanceof PrivateKey){
        		fileName = "/home/ubuntu/sbskeys1/allkeys/PrivateKey.ser";
        	}
        	else if(key instanceof PublicKey){
        		fileName = "/home/ubuntu/sbskeys1/allkeys/PublicKey.ser";
        	}
        	 
        	else if(key instanceof X509Certificate){
        		fileName = "/home/ubuntu/sbskeys1/allkeys/Certificate.ser";
        	}            
         FileOutputStream fout = new FileOutputStream(fileName);
         ObjectOutputStream oos = new ObjectOutputStream(fout);   
         oos.writeObject(key);
         oos.close();            
        }catch(Exception ex){
            ex.printStackTrace();
        }
    }
    
    
  
}
