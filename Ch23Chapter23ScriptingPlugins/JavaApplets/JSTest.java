import javax.swing.*;

public class JSTest extends JApplet {

    JTextArea text = new JTextArea(100,100);

    public JSTest() {
        text.setText("Hi, I'm an applet");
        getContentPane().add(text);
    }

    public void setText(String s)
    {
        text.setText(s);
    }
}