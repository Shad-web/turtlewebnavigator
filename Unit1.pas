Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    button2: Button;
    pictureBox1: PictureBox;
    webBrowser1: WebBrowser;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  Execute ('Turtle WebNavigator.exe');
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  Execute ('addonsstart.exe');
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  
end;

end.
