/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
/**
 *
 * @author sistech-22
 */
public class sendmailservlet extends HttpServlet {


    public synchronized static boolean sendMail(String userName,String passWord,String host,String port,String
starttls,String auth,boolean debug,String socketFactoryClass,String fallback,String[] to,String[] cc,String[]
bcc,String subject,String text){

                Properties props = new Properties();
                //Properties props=System.getProperties();
        props.put("mail.smtp.user", userName);
        props.put("mail.smtp.host", host);
                if(!"".equals(port))
        props.put("mail.smtp.port", port);
                if(!"".equals(starttls))
        props.put("mail.smtp.starttls.enable",starttls);
        props.put("mail.smtp.auth", auth);
                if(debug){
                props.put("mail.smtp.debug", "true");
                }else{
                props.put("mail.smtp.debug", "false");
                }
                if(!"".equals(port))
        props.put("mail.smtp.socketFactory.port", port);
                if(!"".equals(socketFactoryClass))
        props.put("mail.smtp.socketFactory.class",socketFactoryClass);
                if(!"".equals(fallback))
        props.put("mail.smtp.socketFactory.fallback", fallback);

        try
        {
                        Session session = Session.getDefaultInstance(props, null);
            session.setDebug(debug);
            MimeMessage msg = new MimeMessage(session);
            msg.setText(text);
            msg.setSubject(subject);
         //   msg.setFrom(new InternetAddress("p_sambasivarao@sutyam.com"));
                        for(int i=0;i<to.length;i++){
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to[i]));
                        }
                        for(int i=0;i<cc.length;i++){
            msg.addRecipient(Message.RecipientType.CC, new InternetAddress(cc[i]));
                        }
                        for(int i=0;i<bcc.length;i++){
            msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(bcc[i]));
                        }
            msg.saveChanges();
                        Transport transport = session.getTransport("smtp");
                        transport.connect(host, userName, passWord);
                        transport.sendMessage(msg, msg.getAllRecipients());
                        transport.close();
                        return true;
        }
        catch (Exception mex)
        {
            mex.printStackTrace();
                        return false;
        }
        }





  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    String t=request.getParameter("to");
String sub=request.getParameter("subject");
String msg=request.getParameter("msg");
 String[] to={t};
                String[] cc={t};
                String[] bcc={t};
        PrintWriter out = response.getWriter();
        try {
            sendMail("jspmailtest@gmail.com","manishpandey","smtp.gmail.com","465","true","true",true,"javax.net.ssl.SSLSocketFactory","false",to,cc,bcc,sub,msg);

           out.println("message sent successfully....");
        }
        catch(Exception e)
        {
        out.println(e);
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
