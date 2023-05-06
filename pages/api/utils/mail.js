import nodemailer from 'nodemailer';

const transporter = nodemailer.createTransport({
  host: 'smtp.gmail.com',
  port: 465,
  secure: true,
  auth: {
    user: 'datistpham@gmail.com',
    pass: 'hhwvkzgonejuxiyr',
  },
});

const mailOptions = {
  from: 'datistpham@gmail.com',
  to: 'recipient_email_address',
  subject: 'Test Email',
  text: 'This is a test email sent from Nodemailer!',
};



transporter.sendMail({
    from: 'datistpham@gmail.com',
    to: 'recipient_email_address',
    subject: 'Test Email',
    text: 'This is a test email sent from Nodemailer!',
  }, (error, info) => {
  if (error) {
    console.log('Error sending email:', error);
  } else {
    console.log('Email sent:', info.response);
  }
});

const sendEmail= async (email, code)=> {
    transporter.sendMail({
        from: 'datistpham@gmail.com',
        to: email,
        subject: 'Verfify account',
        text: 'Your code verify is: '+ code,
    }, (err, result)=> {
        if(err) throw err
        return result.response
    })
}

export default sendEmail