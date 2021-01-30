
namespace WindowsFormsApp1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnConnect = new System.Windows.Forms.Button();
            this.listBauds = new System.Windows.Forms.ListBox();
            this.label2 = new System.Windows.Forms.Label();
            this.listPorts = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.rtbDisplay = new System.Windows.Forms.RichTextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.toggleBlueLED = new System.Windows.Forms.CheckBox();
            this.label4 = new System.Windows.Forms.Label();
            this.toggleRedLED = new System.Windows.Forms.CheckBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnConnect);
            this.groupBox1.Controls.Add(this.listBauds);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.listPorts);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 44);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(166, 122);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "COM port settings";
            // 
            // btnConnect
            // 
            this.btnConnect.Location = new System.Drawing.Point(9, 89);
            this.btnConnect.Name = "btnConnect";
            this.btnConnect.Size = new System.Drawing.Size(142, 27);
            this.btnConnect.TabIndex = 1;
            this.btnConnect.Text = "Connect";
            this.btnConnect.UseVisualStyleBackColor = true;
            this.btnConnect.Click += new System.EventHandler(this.btnConnect_Click);
            // 
            // listBauds
            // 
            this.listBauds.FormattingEnabled = true;
            this.listBauds.ItemHeight = 16;
            this.listBauds.Items.AddRange(new object[] {
            "2400",
            "4800",
            "9600",
            "19200",
            "38400"});
            this.listBauds.Location = new System.Drawing.Point(74, 63);
            this.listBauds.Name = "listBauds";
            this.listBauds.Size = new System.Drawing.Size(77, 20);
            this.listBauds.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Baud";
            // 
            // listPorts
            // 
            this.listPorts.FormattingEnabled = true;
            this.listPorts.ItemHeight = 16;
            this.listPorts.Location = new System.Drawing.Point(74, 35);
            this.listPorts.Name = "listPorts";
            this.listPorts.Size = new System.Drawing.Size(77, 20);
            this.listPorts.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "Name";
            // 
            // rtbDisplay
            // 
            this.rtbDisplay.Location = new System.Drawing.Point(271, 44);
            this.rtbDisplay.Name = "rtbDisplay";
            this.rtbDisplay.Size = new System.Drawing.Size(437, 263);
            this.rtbDisplay.TabIndex = 1;
            this.rtbDisplay.Text = "";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.toggleRedLED);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.toggleBlueLED);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Location = new System.Drawing.Point(12, 216);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(166, 91);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "On/Off LED";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 34);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 17);
            this.label3.TabIndex = 4;
            this.label3.Text = "Blue LED";
            // 
            // toggleBlueLED
            // 
            this.toggleBlueLED.AutoSize = true;
            this.toggleBlueLED.Location = new System.Drawing.Point(100, 35);
            this.toggleBlueLED.Name = "toggleBlueLED";
            this.toggleBlueLED.Size = new System.Drawing.Size(18, 17);
            this.toggleBlueLED.TabIndex = 5;
            this.toggleBlueLED.UseVisualStyleBackColor = true;
            this.toggleBlueLED.CheckedChanged += new System.EventHandler(this.toggleBlueLED_CheckedChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 62);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 17);
            this.label4.TabIndex = 6;
            this.label4.Text = "Red LED";
            // 
            // toggleRedLED
            // 
            this.toggleRedLED.AutoSize = true;
            this.toggleRedLED.Location = new System.Drawing.Point(100, 62);
            this.toggleRedLED.Name = "toggleRedLED";
            this.toggleRedLED.Size = new System.Drawing.Size(18, 17);
            this.toggleRedLED.TabIndex = 7;
            this.toggleRedLED.UseVisualStyleBackColor = true;
            this.toggleRedLED.CheckedChanged += new System.EventHandler(this.toggleRedLED_CheckedChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(759, 342);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.rtbDisplay);
            this.Controls.Add(this.groupBox1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ListBox listBauds;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ListBox listPorts;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnConnect;
        private System.Windows.Forms.RichTextBox rtbDisplay;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.CheckBox toggleRedLED;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox toggleBlueLED;
        private System.Windows.Forms.Label label3;
    }
}

