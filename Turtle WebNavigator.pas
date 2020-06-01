{$apptype windows}
{$reference System.Windows.Forms.dll}
{$reference System.Drawing.dll}
uses 
  System.Windows.Forms,
  System.ComponentModel,
  System.Net,
  System.Net.Security,
  System.Drawing,
  System.Drawing.Text,
  System;

var
form:System.Windows.Forms.Form;
url:System.Windows.Forms.TextBox;
web:System.Windows.Forms.WebBrowser;
pan:System.Windows.Forms.Panel;
qwant:System.Windows.Forms.Button;
mail:System.Windows.Forms.Button;
home:System.Windows.Forms.Button;
forw:System.Windows.Forms.Button;
dog:System.Windows.Forms.Button;
r0:System.Windows.Forms.Button;
newtab:System.Windows.Forms.Button;
addons:System.Windows.Forms.Button;
script:System.Windows.Forms.Button;
go:System.Windows.Forms.Button;
back:System.Windows.Forms.Button;
km:System.Windows.Forms.Button;
drug:System.Windows.Forms.Button;
stop:System.Windows.Forms.Button;
about:System.Windows.Forms.Button;
refresh:System.Windows.Forms.Button;
procedure w_NW(sender: object; e: CancelEventArgs);
begin
web.Navigate(web.StatusText.ToString());
e.Cancel :=true;
end;
procedure _home_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('http://www.turtleweb.ru/index/startpage/0-14');
  web.Refresh();
end;


procedure _newtab_(sender: object; e: EventArgs);
begin
Execute ('Turtle WebNavigator.exe');
end;

procedure _qwant_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://lite.qwant.com');
  web.Refresh();
end;
procedure _km_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('http://www.km.ru');
  web.Refresh();
end;
procedure _drug_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('http://vkrugudruzei.ru/reg');
  web.Refresh();
end;
procedure _mail_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://mail.ru');
  web.Refresh();
end;

procedure _r0_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://r0.ru');
  web.Refresh();
end;

procedure _dog_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://www.dogpile.com');
  web.Refresh();
end;

procedure _about_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('http://turtleweb.ru');
  web.Refresh();
end;

procedure _stop_(sender: object; e: EventArgs);
begin
  web.Stop();
end; 

procedure _refresh_ (sender:object; e : EventArgs);
begin
  web.Refresh();
end;
procedure _script_ (sender:object; e : EventArgs);
begin
web.Url:=new Uri('https://tosdr.org');
  web.Refresh();
if web.ScriptErrorsSuppressed=false then
begin
script.BackColor:=System.Drawing.Color.Red;
  end;
end;

procedure _addons_ (sender:object; e : EventArgs);
begin
  Execute('Addons.exe');
end;

procedure _back_(sender: object; e: EventArgs);
begin
  web.GoBack();
end; 

procedure _forward_(sender: object; e: EventArgs);
begin
  web.GoForward();
end; 

procedure _search_(sender: object; e: EventArgs);
begin
  web.Url:=new Uri('http://' + url.Text);
  web.Refresh();
end; 
 
 
begin

  
  //create
  url:=System.Windows.Forms.TextBox.Create;
  web:=System.Windows.Forms.WebBrowser.Create;
  home:=System.Windows.Forms.Button.Create;
  go:=System.Windows.Forms.Button.Create;
  back:=System.Windows.Forms.Button.Create;
  forw:=System.Windows.Forms.Button.Create;
  stop:=System.Windows.Forms.Button.Create;
  script:=System.Windows.Forms.Button.Create;
  r0:=System.Windows.Forms.Button.Create;
  mail:=System.Windows.Forms.Button.Create;
  qwant:=System.Windows.Forms.Button.Create;
  km:=System.Windows.Forms.Button.Create;
  drug:=System.Windows.Forms.Button.Create;
  newtab:=System.Windows.Forms.Button.Create;
  refresh:=System.Windows.Forms.Button.Create;
  addons:=System.Windows.Forms.Button.Create;
  about:=System.Windows.Forms.Button.Create;
 dog:=System.Windows.Forms.Button.Create;
  pan:=System.Windows.Forms.Panel.Create; 
  form:=System.Windows.Forms.Form.Create;
   //web
   web.Url:=new Uri('http://www.turtleweb.ru/index/startpage/0-14');;
   web.Dock:=DockStyle.Fill;
   //panel
   pan.Height:=30;
   pan.BackColor:=System.Drawing.Color.Gray;
   pan.Dock:=DockStyle.Left;
   //form
   form.Text:='Turtle WebNavigator - удобный и приватный веб-браузер';
   form.Height:=800;
   form.Width:=1500;
   //url
   url.Width:=135;
   url.Left:=2;
   url.Top:=5;
   //script
   script.Image:=System.Drawing.Image.FromFile ('script.png');
   script.BackColor:=System.Drawing.Color.YellowGreen;
   script.Left:=130;
   script.Top:=95;
   script.Width:=60;
   script.Height:=60;
   //go
   go.Image:=System.Drawing.Image.FromFile ('search.png');
   go.Left:=140;
   go.Top:=5;
   go.Width:=60;
   go.Height:=60;
 
   //dog
   dog.Image:=System.Drawing.Image.FromFile ('dog.png');
   dog.Left:=2;
   dog.Top:=312;
   dog.Width:=60;
   dog.Height:=60;
    //newtab
   newtab.Image:=System.Drawing.Image.FromFile ('newtab.png');
   newtab.Left:=130;
   newtab.Top:=160;
   newtab.Width:=60;
   newtab.Height:=60;
    //qwant
   qwant.Image:=System.Drawing.Image.FromFile ('qwant.png');
   qwant.Left:=62;
   qwant.Top:=312;
   qwant.Width:=60;
   qwant.Height:=60;
      //km
   km.Image:=System.Drawing.Image.FromFile ('km.png');
   km.Left:=122;
   km.Top:=250;
   km.Width:=60;
   km.Height:=60;
      //drug
   drug.Image:=System.Drawing.Image.FromFile ('drug.png');
   drug.Left:=122;
   drug.Top:=312;
   drug.Width:=60;
   drug.Height:=60;
   //mail
   mail.Image:=System.Drawing.Image.FromFile ('mail.png');
   mail.Left:=2;
   mail.Top:=250;
   mail.Width:=60;
   mail.Height:=60;
   //r0
   r0.Image:=System.Drawing.Image.FromFile ('r0.png');
   r0.Left:=62;
   r0.Top:=250;
   r0.Width:=60;
   r0.Height:=60;
   //about
   about.Image:=System.Drawing.Image.FromFile ('browser.png');
   about.BackColor:=System.Drawing.Color.SpringGreen;
   about.Left:=30;
   about.Top:=375;
   about.Width:=140;
   about.Height:=75;
   //addons
   addons.Image:=System.Drawing.Image.FromFile ('addons.png');
   addons.Left:=4;
   addons.Top:=160;
   addons.Width:=60;
   addons.Height:=60;
   //home
   home.Image:=System.Drawing.Image.FromFile ('home.png');
   home.Left:=65;
   home.Top:=160;
   home.Width:=60;
   home.Height:=60;
   //stop
   stop.Image:=System.Drawing.Image.FromFile ('stop.png');
   stop.Left:=4;
   stop.Top:=35;
   stop.Width:=60;
   stop.Height:=60;
   //refresh
   refresh.Image:=System.Drawing.Image.FromFile ('refresh.png');
   refresh.Left:=65;
   refresh.Top:=35;
   refresh.Width:=60;
   refresh.Height:=60;
 
   //forward
   forw.Image:=System.Drawing.Image.FromFile ('forw.png');
   forw.Left:=65;
   forw.Top:=95;
   forw.Width:=60;
   forw.Height:=60;
   //back
   back.Image:=System.Drawing.Image.FromFile ('back.png');
   back.Left:=4;
   back.Top:=95;
   back.Width:=60;
   back.Height:=60;
    
  //events
  go.Click+=_search_;
  home.Click+=_home_;
  stop.Click+=_stop_;
  addons.Click+=_addons_;
  about.Click+=_about_;
  back.Click+=_back_;
  forw.Click+=_forward_;
  mail.Click+=_mail_;
  r0.Click+=_r0_;
  qwant.Click+=_qwant_;
  dog.Click+=_dog_;
  script.Click+=_script_;
  newtab.Click+=_newtab_;
  refresh.Click+=_refresh_;
  drug.Click+=_drug_;
  km.Click+=_km_;
  web.NewWindow += w_NW;
  //controls
  form.Controls.Add(go);
  form.Controls.Add(stop);
  form.Controls.Add(home);
  form.Controls.Add(refresh);
  form.Controls.Add(dog);
  form.Controls.Add(addons);
  form.Controls.Add(mail);
  form.Controls.Add(r0);
  form.Controls.Add(qwant);
  form.Controls.Add(back);
  form.Controls.Add(forw);
  form.Controls.Add(web);
  form.Controls.Add(about);
  form.Controls.Add(newtab);
  form.Controls.Add(script);
  form.Controls.Add(drug);
  form.Controls.Add(km);
  form.Controls.Add(url);
  form.Controls.Add(pan);
  //privacy
  web.ScriptErrorsSuppressed:=true;
  //logo
  form.Icon:=System.Drawing.Icon.ExtractAssociatedIcon('browser.ico');
  //Application
  Application.Run(form);
end.
