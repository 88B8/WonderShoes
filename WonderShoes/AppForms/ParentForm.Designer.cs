namespace WonderShoes.AppForms
{
    partial class ParentForm
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && components != null) components.Dispose();
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.logoPictureBox = new System.Windows.Forms.PictureBox();
            this.titleLabel = new System.Windows.Forms.Label();
            this.backButton = new System.Windows.Forms.Button();
            this.fullNameLabel = new System.Windows.Forms.Label();
            this.roleLabel = new System.Windows.Forms.Label();
            this.cartPictureBox = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.logoPictureBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cartPictureBox)).BeginInit();
            this.SuspendLayout();
            // splitContainer1
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer1.IsSplitterFixed = true;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            this.splitContainer1.Panel1.BackColor = System.Drawing.Color.FromArgb(210, 246, 231);
            this.splitContainer1.Panel1.Controls.Add(this.logoPictureBox);
            this.splitContainer1.Panel1.Controls.Add(this.titleLabel);
            this.splitContainer1.Panel1.Controls.Add(this.backButton);
            this.splitContainer1.Panel1.Controls.Add(this.fullNameLabel);
            this.splitContainer1.Panel1.Controls.Add(this.roleLabel);
            this.splitContainer1.Panel1.Controls.Add(this.cartPictureBox);
            this.splitContainer1.Size = new System.Drawing.Size(800, 450);
            this.splitContainer1.SplitterDistance = 90;
            this.splitContainer1.TabIndex = 0;
            // logoPictureBox
            this.logoPictureBox.Image = global::WonderShoes.Properties.Resources.logo;
            this.logoPictureBox.Location = new System.Drawing.Point(20, 20);
            this.logoPictureBox.Name = "logoPictureBox";
            this.logoPictureBox.Size = new System.Drawing.Size(50, 50);
            this.logoPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.logoPictureBox.TabStop = false;
            // titleLabel
            this.titleLabel.AutoSize = true;
            this.titleLabel.Font = new System.Drawing.Font("Calibri", 8.25F, System.Drawing.FontStyle.Bold);
            this.titleLabel.Location = new System.Drawing.Point(80, 20);
            this.titleLabel.Name = "titleLabel";
            this.titleLabel.Text = "";
            // backButton
            this.backButton.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
            this.backButton.BackColor = System.Drawing.Color.FromArgb(112, 178, 175);
            this.backButton.Cursor = System.Windows.Forms.Cursors.Hand;
            this.backButton.Location = new System.Drawing.Point(705, 20);
            this.backButton.Margin = new System.Windows.Forms.Padding(20);
            this.backButton.Name = "backButton";
            this.backButton.Size = new System.Drawing.Size(75, 23);
            this.backButton.Text = "Назад";
            this.backButton.UseVisualStyleBackColor = false;
            this.backButton.Click += new System.EventHandler(this.backButton_Click);
            // fullNameLabel
            this.fullNameLabel.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
            this.fullNameLabel.AutoSize = false;
            this.fullNameLabel.Location = new System.Drawing.Point(400, 20);
            this.fullNameLabel.Name = "fullNameLabel";
            this.fullNameLabel.Size = new System.Drawing.Size(280, 20);
            this.fullNameLabel.Text = "";
            this.fullNameLabel.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // roleLabel
            this.roleLabel.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
            this.roleLabel.AutoSize = false;
            this.roleLabel.Location = new System.Drawing.Point(400, 45);
            this.roleLabel.Name = "roleLabel";
            this.roleLabel.Size = new System.Drawing.Size(280, 20);
            this.roleLabel.Text = "";
            this.roleLabel.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // cartPictureBox
            this.cartPictureBox.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
            this.cartPictureBox.Cursor = System.Windows.Forms.Cursors.Hand;
            this.cartPictureBox.Image = global::WonderShoes.Properties.Resources.cart;
            this.cartPictureBox.Location = new System.Drawing.Point(750, 50);
            this.cartPictureBox.Name = "cartPictureBox";
            this.cartPictureBox.Size = new System.Drawing.Size(30, 30);
            this.cartPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.cartPictureBox.TabStop = false;
            this.cartPictureBox.Visible = false;
            // ParentForm
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.splitContainer1);
            this.Font = new System.Drawing.Font("Calibri", 8.25F);
            this.Icon = global::WonderShoes.Properties.Resources.logoIcon;
            this.Name = "ParentForm";
            this.Text = "Чудо Обувь";
            this.Load += new System.EventHandler(this.ParentForm_Load);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ParentForm_FormClosed);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.logoPictureBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cartPictureBox)).EndInit();
            this.ResumeLayout(false);
        }

        protected System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.PictureBox logoPictureBox;
        private System.Windows.Forms.Label titleLabel;
        private System.Windows.Forms.Button backButton;
        private System.Windows.Forms.Label fullNameLabel;
        private System.Windows.Forms.Label roleLabel;
        private System.Windows.Forms.PictureBox cartPictureBox;
    }
}
