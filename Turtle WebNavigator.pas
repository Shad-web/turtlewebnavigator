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
panelcolorr:System.Windows.Forms.Button;
panelcolory:System.Windows.Forms.Button;
panelcolorgreen:System.Windows.Forms.Button;
panelcolorg:System.Windows.Forms.Button;
panelcolorb:System.Windows.Forms.Button;
panelcolorb1:System.Windows.Forms.Button;
panelcolorv:System.Windows.Forms.Button;
panelcolorp:System.Windows.Forms.Button;
panelcoloro:System.Windows.Forms.Button;
addons:System.Windows.Forms.Button;
script:System.Windows.Forms.Button;
searchya:System.Windows.Forms.Button;
go:System.Windows.Forms.Button;
km:System.Windows.Forms.Button;
lj:System.Windows.Forms.Button;
ok:System.Windows.Forms.Button;
fb:System.Windows.Forms.Button;
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
procedure _panelcolorr_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Red;
go1.BackColor:=System.Drawing.Color.Red;
end;
procedure _panelcoloro_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.OrangeRed;
go1.BackColor:=System.Drawing.Color.OrangeRed;
end;
procedure _panelcolory_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Yellow;
go1.BackColor:=System.Drawing.Color.Yellow;
end;
procedure _panelcolorgreen_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Green;
go1.BackColor:=System.Drawing.Color.Green;
end;
procedure _panelcolorg_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Gray;
go1.BackColor:=System.Drawing.Color.Gray;
end;
procedure _panelcolorv_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Violet;
go1.BackColor:=System.Drawing.Color.Violet;
end;
procedure _panelcolorb_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.Blue;
go1.BackColor:=System.Drawing.Color.Blue;
end;
procedure _panelcolorb1_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.SkyBlue;
go1.BackColor:=System.Drawing.Color.SkyBlue;
end;
procedure _panelcolorp_(sender: object; e: EventArgs);
begin
pan.BackColor:=System.Drawing.Color.HotPink;
go1.BackColor:=System.Drawing.Color.HotPink;
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
procedure _ok_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://m.ok.ru');
  web.Refresh();
  end;
procedure _lj_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://livejournal.com');
web.Refresh();
  end;
  procedure _fb_(sender: object; e: EventArgs);
begin
web.Url:=new Uri('https://m.facebook.com');
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
  panelcolorr:=System.Windows.Forms.Button.Create;
   panelcolorg:=System.Windows.Forms.Button.Create;
    panelcolorgreen:=System.Windows.Forms.Button.Create;
     panelcoloro:=System.Windows.Forms.Button.Create;
      panelcolory:=System.Windows.Forms.Button.Create;
       panelcolorv:=System.Windows.Forms.Button.Create;
        panelcolorb:=System.Windows.Forms.Button.Create;
        panelcolorb1:=System.Windows.Forms.Button.Create;
        panelcolorp:=System.Windows.Forms.Button.Create;
  r0:=System.Windows.Forms.Button.Create;
  mail:=System.Windows.Forms.Button.Create;
  ok:=System.Windows.Forms.Button.Create;
  lj:=System.Windows.Forms.Button.Create;
  fb:=System.Windows.Forms.Button.Create;
  qwant:=System.Windows.Forms.Button.Create;
  newtab:=System.Windows.Forms.Button.Create;
  wa:=System.Windows.Forms.Button.Create;
  sa:=System.Windows.Forms.Button.Create;
  foxford:=System.Windows.Forms.Button.Create;
  refresh:=System.Windows.Forms.Button.Create;
  km:=System.Windows.Forms.Button.Create;
  ya:=System.Windows.Forms.Button.Create;
  incognito:=System.Windows.Forms.Button.Create;
  addons:=System.Windows.Forms.Button.Create;
  about:=System.Windows.Forms.Button.Create;
 dog:=System.Windows.Forms.Button.Create;
  pan:=System.Windows.Forms.Panel.Create; 
  go1:=System.Windows.Forms.Panel.Create;
  form:=System.Windows.Forms.Form.Create;
   //web
   web.Url:=new Uri('http://google.com');;
   web.Dock:=DockStyle.Fill;
   //panel
   pan.Width:=186;
   pan.BackColor:=System.Drawing.Color.LightGreen;
   pan.Dock:=DockStyle.Left;
   //go1
   go1.Height:=30;
   go1.BackColor:=System.Drawing.Color.LightGreen;
   go1.Dock:=DockStyle.Top;
   //form
   form.Text:='Turtle WebNavigator - удобный и приватный веб-браузер';
   form.Height:=800;
   form.Width:=1500;
   form.WindowState:=FormWindowState.Maximized;
   //url
   url.Width:=1059;
   url.Left:=41;
   url.Top:=3;
   //script
   script.Image:=System.Drawing.Image.FromFile ('script.png');
   script.BackColor:=System.Drawing.Color.YellowGreen;
   script.Left:=20;
   script.Top:=3;
   script.Width:=20;
   script.Height:=20;
   //go
   go.ForeColor:=System.Drawing.Color.DarkRed;
   go.Image:=System.Drawing.Image.FromFile ('go.png');
   go.Left:=1130;
   go.Top:=1;
   go.Width:=60;
   go.Height:=29;
   //panelcolor
   panelcolorr.BackColor:=System.Drawing.Color.Red;
   panelcolorr.ForeColor:=System.Drawing.Color.Red;
   panelcolorr.Left:=2;
   panelcolorr.Top:=420;
   panelcolorr.Width:=20;
   panelcolorr.Height:=20;
    panelcoloro.BackColor:=System.Drawing.Color.OrangeRed;
   panelcoloro.ForeColor:=System.Drawing.Color.OrangeRed;
   panelcoloro.Left:=22;
   panelcoloro.Top:=420;
   panelcoloro.Width:=20;
   panelcoloro.Height:=20;
    panelcolorg.BackColor:=System.Drawing.Color.Gray;
    panelcolorg.ForeColor:=System.Drawing.Color.Gray;
   panelcolorg.Left:=122;
   panelcolorg.Top:=420;
   panelcolorg.Width:=20;
   panelcolorg.Height:=20;
    panelcolory.BackColor:=System.Drawing.Color.Yellow;
    panelcolory.ForeColor:=System.Drawing.Color.Yellow;
   panelcolory.Left:=42;
   panelcolory.Top:=420;
   panelcolory.Width:=20;
   panelcolory.Height:=20;
    panelcolorgreen.BackColor:=System.Drawing.Color.Green;
    panelcolorgreen.ForeColor:=System.Drawing.Color.Green;
   panelcolorgreen.Left:=62;
   panelcolorgreen.Top:=420;
   panelcolorgreen.Width:=20;
   panelcolorgreen.Height:=20;
    panelcolorb.BackColor:=System.Drawing.Color.Blue;
    panelcolorb.ForeColor:=System.Drawing.Color.Blue;
   panelcolorb.Left:=82;
   panelcolorb.Top:=420;
   panelcolorb.Width:=20;
   panelcolorb.Height:=20;
    panelcolorv.BackColor:=System.Drawing.Color.Violet;
    panelcolorv.ForeColor:=System.Drawing.Color.Violet;
   panelcolorv.Left:=102;
   panelcolorv.Top:=420;
   panelcolorv.Width:=20;
   panelcolorv.Height:=20;
       panelcolorb1.BackColor:=System.Drawing.Color.SkyBlue;
       panelcolorb1.ForeColor:=System.Drawing.Color.SkyBlue;
   panelcolorb1.Left:=142;
   panelcolorb1.Top:=420;
   panelcolorb1.Width:=20;
   panelcolorb1.Height:=20;
       panelcolorp.BackColor:=System.Drawing.Color.Pink;
       panelcolorp.ForeColor:=System.Drawing.Color.Pink;
   panelcolorp.Left:=162;
   panelcolorp.Top:=420;
   panelcolorp.Width:=20;
   panelcolorp.Height:=20;
     //searchya
   searchya.ForeColor:=System.Drawing.Color.DarkRed;
   searchya.Image:=System.Drawing.Image.FromFile ('search.png');
   searchya.Left:=1101;
  searchya.Top:=1;
   searchya.Width:=29;
   searchya.Height:=29;
 
   //dog
   dog.Image:=System.Drawing.Image.FromFile ('dog.png');
   dog.Left:=1;
   dog.Top:=130;
   dog.Width:=60;
   dog.Height:=60;
    //ok
   ok.Image:=System.Drawing.Image.FromFile ('ok.png');
   ok.Left:=1;
   ok.Top:=250;
   ok.Width:=60;
   ok.Height:=60;
    //lj
   lj.Image:=System.Drawing.Image.FromFile ('lj.png');
   lj.Left:=61;
   lj.Top:=250;
   lj.Width:=60;
   lj.Height:=60;
    //fb
   fb.Image:=System.Drawing.Image.FromFile ('fb.png');
   fb.Left:=122;
   fb.Top:=250;
   fb.Width:=60;
   fb.Height:=60;
   //ya
   ya.Image:=System.Drawing.Image.FromFile ('ya.png');
   ya.Left:=120;
   ya.Top:=70;
   ya.Width:=60;
   ya.Height:=60;
   //incognito
   incognito.BackColor:=System.Drawing.Color.White;
   incognito.Image:=System.Drawing.Image.FromFile ('incognito.png');
   incognito.Left:=1191;
   incognito.Top:=1;
   incognito.Width:=30;
   incognito.Height:=29;
   //km
   km.Image:=System.Drawing.Image.FromFile ('km.png');
   km.Left:=120;
   km.Top:=130;
   km.Width:=60;
   km.Height:=60;
     //wa
   wa.Image:=System.Drawing.Image.FromFile ('wa.png');
   wa.Left:=1;
   wa.Top:=190;
   wa.Width:=60;
   wa.Height:=60;
     //foxford
   foxford.Image:=System.Drawing.Image.FromFile ('foxford.png');
   foxford.Left:=61;
   foxford.Top:=190;
   foxford.Width:=60;
   foxford.Height:=60;
     //sa
   sa.Image:=System.Drawing.Image.FromFile ('school-assistant.png');
   sa.Left:=120;
   sa.Top:=190;
   sa.Width:=60;
   sa.Height:=60;
    //newtab
   newtab.Image:=System.Drawing.Image.FromFile ('newtab.png');
   newtab.Left:=1;
   newtab.Top:=3;
   newtab.Width:=20;
   newtab.Height:=20;
    //qwant
   qwant.Image:=System.Drawing.Image.FromFile ('qwant.png');
   qwant.Left:=60;
   qwant.Top:=130;
   qwant.Width:=60;
   qwant.Height:=60;
   //mail
   mail.Image:=System.Drawing.Image.FromFile ('mail.png');
   mail.Left:=1;
   mail.Top:=70;
   mail.Width:=60;
   mail.Height:=60;
   //r0
   r0.Image:=System.Drawing.Image.FromFile ('r0.png');
   r0.Left:=60;
   r0.Top:=70;
   r0.Width:=60;
   r0.Height:=60;
   //about
   about.Image:=System.Drawing.Image.FromFile ('browser.png');
   about.BackColor:=System.Drawing.Color.SpringGreen;
   about.Left:=30;
   about.Top:=330;
   about.Width:=140;
   about.Height:=75;
   //addons
   addons.Image:=System.Drawing.Image.FromFile ('addons.png');
   addons.Left:=125;
   addons.Top:=35;
   addons.Width:=30;
   addons.Height:=30;
   //home
   home.Image:=System.Drawing.Image.FromFile ('home.png');
   home.Left:=155;
   home.Top:=35;
   home.Width:=30;
   home.Height:=30;
   //stop
   stop.BackColor:=System.Drawing.Color.White;
   stop.Image:=System.Drawing.Image.FromFile ('stop.png');
   stop.Left:=1;
   stop.Top:=35;
   stop.Width:=30;
   stop.Height:=30;
   //refresh
    refresh.ForeColor:=System.Drawing.Color.DarkSeaGreen;
   refresh.Image:=System.Drawing.Image.FromFile ('refresh.png');
   refresh.Left:=32;
   refresh.Top:=35;
   refresh.Width:=30;
   refresh.Height:=30;
 
   //forward
   forw.Image:=System.Drawing.Image.FromFile ('forw.png');
   forw.Left:=94;
   forw.Top:=35;
   forw.Width:=30;
   forw.Height:=30;
   //back
   back.Image:=System.Drawing.Image.FromFile ('back.png');
   back.Left:=63;
   back.Top:=35;
   back.Width:=30;
   back.Height:=30;
    
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
  fb.Click+=_fb_;
  ok.Click+=_ok_;
  lj.Click+=_lj_;
  script.Click+=_script_;
  panelcolorr.Click+=_panelcolorr_;
  panelcolorg.Click+=_panelcolorg_;
  panelcolorgreen.Click+=_panelcolorgreen_;
  panelcolory.Click+=_panelcolory_;
  panelcoloro.Click+=_panelcoloro_;
  panelcolorv.Click+=_panelcolorv_;
  panelcolorb.Click+=_panelcolorb_;
  panelcolorp.Click+=_panelcolorp_;
  panelcolorb1.Click+=_panelcolorb1_;
  newtab.Click+=_newtab_;
  refresh.Click+=_refresh_;
  ya.Click+=_ya_;
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
  form.Controls.Add(searchya);
  form.Controls.Add(ya);
  form.Controls.Add(lj);
  form.Controls.Add(fb);
  form.Controls.Add(ok);
  form.Controls.Add(km);
  form.Controls.Add(r0);
  form.Controls.Add(qwant);
  form.Controls.Add(incognito);
  form.Controls.Add(back);
  form.Controls.Add(forw);
  form.Controls.Add(web);
  form.Controls.Add(about);
   form.Controls.Add(panelcolorr);
   form.Controls.Add(panelcolorg);
   form.Controls.Add(panelcolorgreen);
   form.Controls.Add(panelcolory);
   form.Controls.Add(panelcoloro);
   form.Controls.Add(panelcolorv);
   form.Controls.Add(panelcolorb);
   form.Controls.Add(panelcolorb1);
   form.Controls.Add(panelcolorp);
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
