namespace WonderShoes.AppControls
{
    partial class ProductUserControl
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && components != null) components.Dispose();
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.photoPictureBox = new System.Windows.Forms.PictureBox();
            this.infoPanel = new System.Windows.Forms.Panel();
            this.pricePanel = new System.Windows.Forms.Panel();
            this.manufacturerNameLabel = new System.Windows.Forms.Label();
            this.categoryLabel = new System.Windows.Forms.Label();
            this.stockLabel = new System.Windows.Forms.Label();
            this.compositionLabel = new System.Windows.Forms.Label();
            this.priceLabel = new System.Windows.Forms.Label();
            this.idLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.photoPictureBox)).BeginInit();
            this.infoPanel.SuspendLayout();
            this.pricePanel.SuspendLayout();
            this.SuspendLayout();
            // photoPictureBox
            this.photoPictureBox.Location = new System.Drawing.Point(20, 20);
            this.photoPictureBox.Name = "photoPictureBox";
            this.photoPictureBox.Size = new System.Drawing.Size(100, 100);
            this.photoPictureBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.photoPictureBox.TabStop = false;
            // infoPanel
            this.infoPanel.Controls.Add(this.manufacturerNameLabel);
            this.infoPanel.Controls.Add(this.categoryLabel);
            this.infoPanel.Controls.Add(this.stockLabel);
            this.infoPanel.Controls.Add(this.compositionLabel);
            this.infoPanel.Location = new System.Drawing.Point(140, 20);
            this.infoPanel.Name = "infoPanel";
            this.infoPanel.Size = new System.Drawing.Size(460, 100);
            // manufacturerNameLabel
            this.manufacturerNameLabel.AutoSize = false;
            this.manufacturerNameLabel.Dock = System.Windows.Forms.DockStyle.Top;
            this.manufacturerNameLabel.Name = "manufacturerNameLabel";
            this.manufacturerNameLabel.Size = new System.Drawing.Size(460, 25);
            this.manufacturerNameLabel.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // categoryLabel
            this.categoryLabel.AutoSize = true;
            this.categoryLabel.Location = new System.Drawing.Point(0, 28);
            this.categoryLabel.Name = "categoryLabel";
            // stockLabel
            this.stockLabel.AutoSize = true;
            this.stockLabel.Location = new System.Drawing.Point(0, 43);
            this.stockLabel.Name = "stockLabel";
            // compositionLabel
            this.compositionLabel.AutoSize = false;
            this.compositionLabel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.compositionLabel.Name = "compositionLabel";
            this.compositionLabel.Size = new System.Drawing.Size(460, 40);
            // pricePanel
            this.pricePanel.Controls.Add(this.priceLabel);
            this.pricePanel.Controls.Add(this.idLabel);
            this.pricePanel.Location = new System.Drawing.Point(620, 20);
            this.pricePanel.Name = "pricePanel";
            this.pricePanel.Size = new System.Drawing.Size(100, 100);
            // priceLabel
            this.priceLabel.AutoSize = false;
            this.priceLabel.Dock = System.Windows.Forms.DockStyle.Top;
            this.priceLabel.Name = "priceLabel";
            this.priceLabel.Size = new System.Drawing.Size(100, 45);
            this.priceLabel.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            // idLabel
            this.idLabel.AutoSize = false;
            this.idLabel.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.idLabel.Name = "idLabel";
            this.idLabel.Size = new System.Drawing.Size(100, 20);
            this.idLabel.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // ProductUserControl
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Controls.Add(this.photoPictureBox);
            this.Controls.Add(this.infoPanel);
            this.Controls.Add(this.pricePanel);
            this.Font = new System.Drawing.Font("Calibri", 8.25F);
            this.Margin = new System.Windows.Forms.Padding(20, 0, 20, 20);
            this.Name = "ProductUserControl";
            this.Size = new System.Drawing.Size(740, 140);
            ((System.ComponentModel.ISupportInitialize)(this.photoPictureBox)).EndInit();
            this.infoPanel.ResumeLayout(false);
            this.infoPanel.PerformLayout();
            this.pricePanel.ResumeLayout(false);
            this.ResumeLayout(false);
        }

        private System.Windows.Forms.PictureBox photoPictureBox;
        private System.Windows.Forms.Panel infoPanel;
        private System.Windows.Forms.Panel pricePanel;
        private System.Windows.Forms.Label manufacturerNameLabel;
        private System.Windows.Forms.Label categoryLabel;
        private System.Windows.Forms.Label stockLabel;
        private System.Windows.Forms.Label compositionLabel;
        private System.Windows.Forms.Label priceLabel;
        private System.Windows.Forms.Label idLabel;
    }
}
