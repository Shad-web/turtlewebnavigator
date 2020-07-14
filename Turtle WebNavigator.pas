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
go1:System.Windows.Forms.Panel;
qwant:System.Windows.Forms.Button;
mail:System.Windows.Forms.Button;
home:System.Windows.Forms.Button;
forw:System.Windows.Forms.Button;
dog:System.Windows.Forms.Button;
foxford:System.Windows.Forms.Button;
wa:System.Windows.Forms.Button;
sa:System.Windows.Forms.Button;
r0:System.Windows.Forms.Button;
newtab:System.Windows.Forms.Button;
addons:System.Windows.Forms.Button;
script:System.Windows.Forms.Button;
searchya:System.Windows.Forms.Button;
go:System.Windows.Forms.Button;
km:System.Windows.Forms.Button;
school:System.Windows.Forms.WebBrowser;
incognito:System.Windows.Forms.Button;
ya:System.Windows.Forms.Button;
back:System.Windows.Forms.Button;
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
web.Url:=new Uri('http://ya.ru');
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
procedure _mail_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://mail.ru');
  web.Refresh();
end;
procedure _foxford_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://foxford.ru');
  web.Refresh();
end;
procedure _sa_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://school-assistant.ru/');
  web.Refresh();
end;
procedure _wa_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://wolframalpha.com');
  web.Refresh();
end;
procedure _ya_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://yandex.ru');
  web.Refresh();
end;
procedure _km_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://km.ru');
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
procedure school_NW(sender: object; e: CancelEventArgs);
begin
school.Navigate(school.StatusText.ToString());
e.Cancel :=true;
end;
procedure _stop_(sender: object; e: EventArgs);
begin
  web.Stop();
end; 

procedure _refresh_ (sender:object; e : EventArgs);
begin
  web.Refresh();
    url.Text:= web.Document.Domain;
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
 procedure _incognito_(sender: object; e: EventArgs);
begin
  web.Url:=new Uri('http://noblockme.ru/go?url=' + url.Text);
  web.Refresh();
end; 
  procedure _searchya_(sender: object; e: EventArgs);
begin
  web.Url:=new Uri('https://yandex.ru/search/?lr=213&text=' + url.Text);
  web.Refresh();
end; 
begin

  
  //create
  url:=System.Windows.Forms.TextBox.Create;
  web:=System.Windows.Forms.WebBrowser.Create;
  home:=System.Windows.Forms.Button.Create;
  go:=System.Windows.Forms.Button.Create;
  searchya:=System.Windows.Forms.Button.Create;
  back:=System.Windows.Forms.Button.Create;
  forw:=System.Windows.Forms.Button.Create;
  stop:=System.Windows.Forms.Button.Create;
  script:=System.Windows.Forms.Button.Create;
  r0:=System.Windows.Forms.Button.Create;
  mail:=System.Windows.Forms.Button.Create;
  qwant:=System.Windows.Forms.Button.Create;
  newtab:=System.Windows.Forms.Button.Create;
  wa:=System.Windows.Forms.Button.Create;
  sa:=System.Windows.Forms.Button.Create;
  foxford:=System.Windows.Forms.Button.Create;
  refresh:=System.Windows.Forms.Button.Create;
  km:=System.Windows.Forms.Button.Create;
  school:=System.Windows.Forms.WebBrowser.Create;
  ya:=System.Windows.Forms.Button.Create;
  incognito:=System.Windows.Forms.Button.Create;
  addons:=System.Windows.Forms.Button.Create;
  about:=System.Windows.Forms.Button.Create;
 dog:=System.Windows.Forms.Button.Create;
  pan:=System.Windows.Forms.Panel.Create; 
  go1:=System.Windows.Forms.Panel.Create;
  form:=System.Windows.Forms.Form.Create;
   //web
   web.Url:=new Uri('http://ya.ru');;
   web.Dock:=DockStyle.Fill;
   //panel
   pan.Height:=30;
   pan.BackColor:=System.Drawing.Color.LightSkyBlue;
   pan.Dock:=DockStyle.Left;
   //go1
   go1.Height:=30;
   go1.BackColor:=System.Drawing.Color.LightSkyBlue;
   go1.Dock:=DockStyle.Top;
   //form
   form.Text:='Turtle WebNavigator - удобный и приватный веб-браузер';
   form.Height:=800;
   form.Width:=1500;
   form.WindowState:=FormWindowState.Maximized;
   //url
   url.Width:=1100;
   url.Left:=1;
   url.Top:=3;
   //script
   script.Text:='Приватность';
   script.Image:=System.Drawing.Image.FromFile ('script.png');
   script.BackColor:=System.Drawing.Color.YellowGreen;
   script.Left:=130;
   script.Top:=95;
   script.Width:=60;
   script.Height:=60;
   //go
   go.ForeColor:=System.Drawing.Color.DarkRed;
   go.Text:='Перейти';
   go.Image:=System.Drawing.Image.FromFile ('search.png');
   go.Left:=1205;
   go.Top:=1;
   go.Width:=60;
   go.Height:=29;
     //searchya
   searchya.ForeColor:=System.Drawing.Color.DarkRed;
   searchya.Text:='Поиск через Яндекс';
   searchya.Image:=System.Drawing.Image.FromFile ('search.png');
   searchya.Left:=1101;
  searchya.Top:=1;
   searchya.Width:=100;
   searchya.Height:=29;
   //school
   school.ScriptErrorsSuppressed:=true;
   school.Url:=new Uri('http://login.school.mosreg.ru');;
   school.Dock:=DockStyle.Right;
   //dog
   dog.Image:=System.Drawing.Image.FromFile ('dog.png');
   dog.Left:=1;
   dog.Top:=312;
   dog.Width:=60;
   dog.Height:=60;
   //ya
   ya.Image:=System.Drawing.Image.FromFile ('ya.png');
   ya.Left:=120;
   ya.Top:=250;
   ya.Width:=60;
   ya.Height:=60;
   //incognito
   incognito.Text:='Открыть через анонимайзер';
   incognito.Image:=System.Drawing.Image.FromFile ('incognito.png');
   incognito.Left:=1267;
   incognito.Top:=1;
   incognito.Width:=100;
   incognito.Height:=29;
   //km
   km.Image:=System.Drawing.Image.FromFile ('km.png');
   km.Left:=120;
   km.Top:=312;
   km.Width:=60;
   km.Height:=60;
     //wa
   wa.Image:=System.Drawing.Image.FromFile ('wa.png');
   wa.Left:=1;
   wa.Top:=373;
   wa.Width:=60;
   wa.Height:=60;
     //foxford
   foxford.Image:=System.Drawing.Image.FromFile ('foxford.png');
   foxford.Left:=61;
   foxford.Top:=373;
   foxford.Width:=60;
   foxford.Height:=60;
     //sa
   sa.Image:=System.Drawing.Image.FromFile ('school-assistant.png');
   sa.Left:=120;
   sa.Top:=373;
   sa.Width:=60;
   sa.Height:=60;
    //newtab
   newtab.ForeColor:=System.Drawing.Color.Tomato;
   newtab.Text:='Новое окно';
   newtab.Image:=System.Drawing.Image.FromFile ('newtab.png');
   newtab.Left:=130;
   newtab.Top:=160;
   newtab.Width:=60;
   newtab.Height:=60;
    //qwant
   qwant.Image:=System.Drawing.Image.FromFile ('qwant.png');
   qwant.Left:=60;
   qwant.Top:=312;
   qwant.Width:=60;
   qwant.Height:=60;
   //mail
   mail.Image:=System.Drawing.Image.FromFile ('mail.png');
   mail.Left:=1;
   mail.Top:=250;
   mail.Width:=60;
   mail.Height:=60;
   //r0
   r0.Image:=System.Drawing.Image.FromFile ('r0.png');
   r0.Left:=60;
   r0.Top:=250;
   r0.Width:=60;
   r0.Height:=60;
   //about
   about.Image:=System.Drawing.Image.FromFile ('browser.png');
   about.BackColor:=System.Drawing.Color.SpringGreen;
   about.Left:=30;
   about.Top:=435;
   about.Width:=140;
   about.Height:=75;
   //addons
   addons.ForeColor:=System.Drawing.Color.SaddleBrown;
   addons.Text:='Расширения';
   addons.Image:=System.Drawing.Image.FromFile ('addons.png');
   addons.Left:=4;
   addons.Top:=160;
   addons.Width:=60;
   addons.Height:=60;
   //home
   home.ForeColor:=System.Drawing.Color.Chocolate;
   home.Text:='Дом. страница';
   home.Image:=System.Drawing.Image.FromFile ('home.png');
   home.Left:=65;
   home.Top:=160;
   home.Width:=60;
   home.Height:=60;
   //stop
   stop.ForeColor:=System.Drawing.Color.Indigo;
   stop.Text:='Остановить загрузку страницы';
   stop.Image:=System.Drawing.Image.FromFile ('stop.png');
   stop.Left:=3;
   stop.Top:=35;
   stop.Width:=63;
   stop.Height:=60;
   //refresh
    refresh.ForeColor:=System.Drawing.Color.DarkSeaGreen;
   refresh.Text:='Обновить страницу';
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
  searchya.Click+=_searchya_;
  home.Click+=_home_;
  stop.Click+=_stop_;
  addons.Click+=_addons_;
  about.Click+=_about_;
  back.Click+=_back_;
  forw.Click+=_forward_;
  mail.Click+=_mail_;
  r0.Click+=_r0_;
  qwant.Click+=_qwant_;
  incognito.Click+=_incognito_;
  dog.Click+=_dog_;
  wa.Click+=_wa_;
  sa.Click+=_sa_;
  foxford.Click+=_foxford_;
  script.Click+=_script_;
  newtab.Click+=_newtab_;
  refresh.Click+=_refresh_;
  ya.Click+=_ya_;
  km.Click+=_km_;
  web.NewWindow += w_NW;
  school.NewWindow+=school_NW;
  //controls
  form.Controls.Add(go);
  form.Controls.Add(stop);
  form.Controls.Add(home);
  form.Controls.Add(refresh);
  form.Controls.Add(dog);
  form.Controls.Add(addons);
  form.Controls.Add(mail);
  form.Controls.Add(searchya);
  form.Controls.Add(ya);
  form.Controls.Add(km);
  form.Controls.Add(r0);
  form.Controls.Add(qwant);
  form.Controls.Add(incognito);
  form.Controls.Add(back);
  form.Controls.Add(forw);
  form.Controls.Add(web);
  form.Controls.Add(school);
  form.Controls.Add(about);
  form.Controls.Add(sa);
  form.Controls.Add(wa);
  form.Controls.Add(foxford);
  form.Controls.Add(newtab);
  form.Controls.Add(script);
  form.Controls.Add(url);
  form.Controls.Add(pan);
  form.Controls.Add(go1);
  //privacy
  web.ScriptErrorsSuppressed:=true;
  //logo
  form.Icon:=System.Drawing.Icon.ExtractAssociatedIcon('browser.ico');
  //Application
  Application.Run(form);
end.
