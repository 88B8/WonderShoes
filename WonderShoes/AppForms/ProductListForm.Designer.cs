namespace WonderShoes.AppForms
{
    partial class ProductListForm
    {
        private System.ComponentModel.IContainer components = null;

        protected override void Dispose(bool disposing)
        {
            if (disposing && components != null) components.Dispose();
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.priceGroupBox = new System.Windows.Forms.GroupBox();
            this.cheapFirst = new System.Windows.Forms.RadioButton();
            this.expensiveFirst = new System.Windows.Forms.RadioButton();
            this.categoryLabel = new System.Windows.Forms.Label();
            this.categoryComboBox = new System.Windows.Forms.ComboBox();
            this.searchLabel = new System.Windows.Forms.Label();
            this.searchTextBox = new System.Windows.Forms.TextBox();
            this.ordersButton = new System.Windows.Forms.Button();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.splitContainer1.Panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.priceGroupBox.SuspendLayout();
            this.SuspendLayout();
            // panel1
            this.panel1.Controls.Add(this.priceGroupBox);
            this.panel1.Controls.Add(this.categoryLabel);
            this.panel1.Controls.Add(this.categoryComboBox);
            this.panel1.Controls.Add(this.searchLabel);
            this.panel1.Controls.Add(this.searchTextBox);
            this.panel1.Controls.Add(this.ordersButton);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(800, 50);
            // priceGroupBox
            this.priceGroupBox.Controls.Add(this.cheapFirst);
            this.priceGroupBox.Controls.Add(this.expensiveFirst);
            this.priceGroupBox.Location = new System.Drawing.Point(20, 0);
            this.priceGroupBox.Name = "priceGroupBox";
            this.priceGroupBox.Size = new System.Drawing.Size(150, 44);
            this.priceGroupBox.Text = "Цена";
            // cheapFirst
            this.cheapFirst.AutoSize = true;
            this.cheapFirst.Checked = true;
            this.cheapFirst.Location = new System.Drawing.Point(8, 18);
            this.cheapFirst.Name = "cheapFirst";
            this.cheapFirst.TabIndex = 0;
            this.cheapFirst.TabStop = true;
            this.cheapFirst.Text = "Меньше";
            // expensiveFirst
            this.expensiveFirst.AutoSize = true;
            this.expensiveFirst.Location = new System.Drawing.Point(80, 18);
            this.expensiveFirst.Name = "expensiveFirst";
            this.expensiveFirst.TabIndex = 1;
            this.expensiveFirst.Text = "Больше";
            // categoryLabel
            this.categoryLabel.AutoSize = true;
            this.categoryLabel.Location = new System.Drawing.Point(185, 17);
            this.categoryLabel.Name = "categoryLabel";
            this.categoryLabel.Text = "Категория";
            // categoryComboBox
            this.categoryComboBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.categoryComboBox.FormattingEnabled = true;
            this.categoryComboBox.Items.AddRange(new object[] {
                "Все категории", "Детская обувь", "Женская обувь", "Мужская обувь"});
            this.categoryComboBox.Location = new System.Drawing.Point(245, 13);
            this.categoryComboBox.Name = "categoryComboBox";
            this.categoryComboBox.Size = new System.Drawing.Size(155, 21);
            this.categoryComboBox.TabIndex = 2;
            this.categoryComboBox.SelectedIndex = 0;
            // searchLabel
            this.searchLabel.AutoSize = true;
            this.searchLabel.Location = new System.Drawing.Point(420, 17);
            this.searchLabel.Name = "searchLabel";
            this.searchLabel.Text = "Поиск";
            // searchTextBox
            this.searchTextBox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.searchTextBox.Location = new System.Drawing.Point(465, 13);
            this.searchTextBox.Name = "searchTextBox";
            this.searchTextBox.Size = new System.Drawing.Size(160, 21);
            this.searchTextBox.TabIndex = 3;
            // ordersButton
            this.ordersButton.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right;
            this.ordersButton.BackColor = System.Drawing.Color.FromArgb(112, 178, 175);
            this.ordersButton.Cursor = System.Windows.Forms.Cursors.Hand;
            this.ordersButton.Location = new System.Drawing.Point(705, 13);
            this.ordersButton.Margin = new System.Windows.Forms.Padding(20);
            this.ordersButton.Name = "ordersButton";
            this.ordersButton.Size = new System.Drawing.Size(75, 23);
            this.ordersButton.TabIndex = 4;
            this.ordersButton.Text = "Заказы";
            this.ordersButton.UseVisualStyleBackColor = false;
            // flowLayoutPanel1
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel1.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 50);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(800, 306);
            this.flowLayoutPanel1.WrapContents = false;
            // ProductListForm
            this.splitContainer1.Panel2.Controls.Add(this.flowLayoutPanel1);
            this.splitContainer1.Panel2.Controls.Add(this.panel1);
            this.Name = "ProductListForm";
            this.Load += new System.EventHandler(this.ProductListForm_Load);
            this.priceGroupBox.ResumeLayout(false);
            this.priceGroupBox.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.ResumeLayout(false);
        }

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox priceGroupBox;
        private System.Windows.Forms.RadioButton cheapFirst;
        private System.Windows.Forms.RadioButton expensiveFirst;
        private System.Windows.Forms.Label categoryLabel;
        private System.Windows.Forms.ComboBox categoryComboBox;
        private System.Windows.Forms.Label searchLabel;
        private System.Windows.Forms.TextBox searchTextBox;
        private System.Windows.Forms.Button ordersButton;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
    }
}
