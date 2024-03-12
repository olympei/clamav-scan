
# serverless ClamAV for S3 scanning

The construct provides easy integration with AWS services to allow for your system to act based on the results of a ClamAV scan.


## Features
- scan object if any new file is updated on s3 using scanAV 
- Zip local code into using terraform 
- Send notification if any file is infected  
## Run Locally

Clone the project

```bash
  git clone https://github.com/AmitBarate07/clamav-scan.git
```

Go to the project directory

```bash
  cd clamav-scan
```

Install dependencies 

```bash
  npm install
```

Start the server

```bash
  terraform init
  terraform plan
  terraform apply 

```


## Use Notification feature 

To use notification feature,  the follow below steps 


```bash
.
├── README.md
├── backend.tf
├── files
│   ├── codee
│   │   ├── clamav.py
│   │   ├── common.py
│   │   ├── decorator.py
│   │   ├── display_infected.py
│   │   ├── metrics.py
│   │   ├── scan.py
│   │   ├── scan_bucket.py
│   │   └── update.py
│   └── layer.zip
├── main.tf
└── variables.tf

To use notification feature,  the follow below steps 

update variable.tf from root directory 
```bash
.
├── README.md
├── backend.tf
├── files
│   ├── codee
│   │   ├── clamav.py
│   │   ├── common.py
│   │   ├── decorator.py
│   │   ├── display_infected.py
│   │   ├── metrics.py
│   │   ├── scan.py
│   │   ├── scan_bucket.py
│   │   └── update.py
│   └── layer.zip
├── main.tf
└── variables.tf
```
└── variables.tf

Update variable.tf from root directory (Yes or No). if the variable value is yes then it will create SNS 

```bash
  variable "create_resources"{
  type    = string
  default = "No"
}
```
Update variable.tf from root directory (yes or No). if the variable value is yes then it will create SNS also update sns_topic_arn value 

│   │   ├── scan.py

```bash
notification = "No"
sns_topic_arn = 'arn:aws:sns:ap-south-1:670995247083:sns_with_terra'
```