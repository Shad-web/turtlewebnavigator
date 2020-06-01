procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.button2 := new System.Windows.Forms.Button();
        self.webBrowser1 := new System.Windows.Forms.WebBrowser();
        self.pictureBox1 := new System.Windows.Forms.PictureBox();
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.SuspendLayout();
        // 
        // button2
        // 
        self.button2.ForeColor := System.Drawing.Color.Green;
        self.button2.Image := (System.Drawing.Image(resources.GetObject('button2.Image')));
        self.button2.Location := new System.Drawing.Point(201, 22);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(323, 55);
        self.button2.TabIndex := 1;
        self.button2.Text := 'Запустить расширение';
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // webBrowser1
        // 
        self.webBrowser1.Location := new System.Drawing.Point(28, 160);
        self.webBrowser1.MinimumSize := new System.Drawing.Size(20, 20);
        self.webBrowser1.Name := 'webBrowser1';
        self.webBrowser1.ScriptErrorsSuppressed := true;
        self.webBrowser1.Size := new System.Drawing.Size(543, 375);
        self.webBrowser1.TabIndex := 2;
        self.webBrowser1.Url := new System.Uri('https://turtleweb.ru/index/rasshirenija/0-16', System.UriKind.Absolute);
        // 
        // pictureBox1
        // 
        self.pictureBox1.Image := (System.Drawing.Image(resources.GetObject('pictureBox1.Image')));
        self.pictureBox1.Location := new System.Drawing.Point(32, 8);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(63, 61);
        self.pictureBox1.TabIndex := 3;
        self.pictureBox1.TabStop := false;
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.PaleGreen;
        self.ClientSize := new System.Drawing.Size(605, 557);
        self.Controls.Add(self.pictureBox1);
        self.Controls.Add(self.webBrowser1);
        self.Controls.Add(self.button2);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedToolWindow;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.Name := 'Form1';
        self.Text := 'Turtle WebNavigator Addons ';
        self.Load += Form1_Load;
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.ResumeLayout(false);
    end;
