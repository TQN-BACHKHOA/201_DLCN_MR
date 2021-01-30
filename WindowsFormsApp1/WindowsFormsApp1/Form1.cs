using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        //Serial 
        SerialPort serial = new SerialPort();
        //Data
        byte[] sendData = new byte[12];
        byte[] recievedData = new byte[32];
        string str = "";

        public Form1()
        {
            InitializeComponent();
            //updatePorts();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            updatePorts();
            rtbDisplay.Text = "";
        }

        private void updatePorts()
        {
            // Retrieve the list of all COM ports on your Computer
            string[] ports = SerialPort.GetPortNames();
            foreach (string port in ports)
            {
                listPorts.Items.Add(port);
            }
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            if (btnConnect.Text == "Connect")
            {
                try
                {
                    if (serial.IsOpen == true)
                    {
                        serial.Close();
                    }
                    //Sets up serial port
                    serial.PortName = listPorts.Items[listPorts.TopIndex].ToString();
                    serial.BaudRate = Convert.ToInt32(listBauds.Items[listBauds.TopIndex]);
                    serial.Handshake = System.IO.Ports.Handshake.None;
                    serial.Parity = Parity.None;
                    serial.DataBits = 8;
                    serial.StopBits = StopBits.One;
                    serial.ReadTimeout = 5000;
                    serial.WriteTimeout = 50;
                    serial.ReceivedBytesThreshold = 32;
                    //serial.DtrEnable = true;   
                    serial.Open();
                    //Sets button State and Creates function call on data recieved
                    btnConnect.Text = "Disconnect";

                    //Disable COM port and Baud rate combox
                    listPorts.Enabled = false;
                    listBauds.Enabled = false;
                    //Init
                    //str_Command = "STATUS";
                    //SerialCmdSend();
                    //
                    serial.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(recieveData);
                }
                catch
                {
                    MessageBox.Show("COM Port can not open. Please try again!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
            else
            {
                try
                {
                    serial.Close();
                    btnConnect.Text = "Connect";


                    //Ensable COM port and Baud rate combox
                    listPorts.Enabled = true;
                    listBauds.Enabled = true;
                }
                catch
                {
                    MessageBox.Show("COM Port can not closed. Plsease try again!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private delegate void UpdateUiTextDelegate(string text);
        private void recieveData(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {

            serial.Read(recievedData, 0, recievedData.Length);

            //Processsing
            string strID = BitConverter.ToUInt16(recievedData, 0).ToString();
            UInt16 Fncode = BitConverter.ToUInt16(recievedData, 2);
            UInt16 Subcode = BitConverter.ToUInt16(recievedData, 28);

            string strRawVal = "";
            string strEngVal = "";
            float t;


            switch (Fncode)
            {
                #region ADC
                //ADC
                case 0x4131: //A1 = ADC1
                case 0x4132: //A2 = ADC2
                case 0x4133: //A3 = ADC3
                case 0x4134: //A4 = ADC4
                case 0x4135: //A5 = ADC5
                case 0x4136: //A6 = ADC6
                    strRawVal = BitConverter.ToUInt16(recievedData, 4).ToString();
                    strEngVal = BitConverter.ToSingle(recievedData, 8).ToString();
                    str = "\tRead analog value is: \n" + "\tRaw Value = " + strRawVal + "\n" + "\tEng. Value = " + strEngVal + "\n\n>";
                    break;
                case 0x4130:  //A0 = ADC1 + ADC2 + ...
                    t = BitConverter.ToSingle(recievedData, 4);
                    str = string.Format("\n\tADC1:  {0,-6:0.000} \tV\n", t);
                    t = BitConverter.ToSingle(recievedData, 8);
                    str = str + string.Format("\n\tADC2:  {0,-6:0.000} \tV\n", t);
                    t = BitConverter.ToSingle(recievedData, 12);
                    str = str + string.Format("\n\tADC3:  {0,-6:0.000} \tV\n", t);
                    t = BitConverter.ToSingle(recievedData, 16);
                    str = str + string.Format("\n\tADC4:  {0,-6:0.000} \tV\n", t);
                    t = BitConverter.ToSingle(recievedData, 20);
                    str = str + string.Format("\n\tADC5:  {0,-6:0.000} \tV\n", t);
                    t = BitConverter.ToSingle(recievedData, 24);
                    str = str + string.Format("\n\tADC6:  {0,-6:0.000} \tV\n", t);
                    str = "\tAnalog Input values : \n" + str + "\n\n>";
                    break;
                    #endregion ADC                    
            }
            //Update text
            rtbDisplay.Invoke(new UpdateUiTextDelegate(displayData), str);

        }

        private void displayData(string text)
        {
            rtbDisplay.Text = text;
        }

        public void SerialCmdSend()
        {            
            if (serial.IsOpen)
            {
                try
                {
                    sendData[0] = (byte)'F';
                    sendData[1] = (byte)'F';
                    // Send data out the port
                    serial.Write(sendData, 0, sendData.Length);
                }
                catch
                {
                    MessageBox.Show("Failed to SEND!");
                }
            }
        }

        private void toggleBlueLED_CheckedChanged(object sender, EventArgs e)
        {
            sendData[3] = (byte)'O';
            sendData[2] = (byte)'8';
            sendData[5] = 0;
            if (toggleBlueLED.Checked)
            {
                sendData[5] = 1;
            }
            SerialCmdSend();
        }

        private void toggleRedLED_CheckedChanged(object sender, EventArgs e)
        {
            sendData[3] = (byte)'O';
            sendData[2] = (byte)'7';
            sendData[5] = 0;
            if (toggleRedLED.Checked)
            {
                sendData[5] = 1;
            }
            SerialCmdSend();
        }
    }
}
