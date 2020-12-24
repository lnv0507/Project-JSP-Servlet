import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    //username : inayakun@gmail.com
    //password : wtagvljvjqdntwer
    public static void main(String[] args) throws UnsupportedEncodingException, MessagingException {
        Properties pro = new Properties();
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true"); //TLS
        String username="inayakun@gmail.com";
        String password="wtagvljvjqdntwer";

        Session session = Session.getInstance(pro, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return  new PasswordAuthentication(username,password);
            }
        });
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("inayakun@gmail.com", "Nxh"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("moddbno@gmail.com"));

            message.setSubject("Nxh");
            message.setText("Dear Mail Crawler\n Hi anh em ");
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
