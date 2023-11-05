 /* Read Access for IAM User*/
        {
            "Sid": "AllowCpSecRead",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::Account_ID:user/name"
            },
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::fk-auto-deal/*",
                "arn:aws:s3:::fk-auto-deal"
            ]
        }
/* Bucket access for Root User*/
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::Account_ID:root"
            },
            "Action": [
                "s3:ListBucket",
                "s3:GetObject*"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket_Name",
                "arn:aws:s3:::Bucket_Name/*"
            ]
        }

/* lambda service access for s3 folder*/

         {
            "Effect": "Allow",
            "Principal": {
                "Service": "lambda.amazonaws.com"
            },
            "Action": [
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:PutObjectTagging"
            ],
            "Resource": "arn:aws:s3:::Bucket_Name/*"
        } 

/* S3 Cross Account policy*/

        {
            "Sid": "AllowCpSecRead",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::Account_ID:user/User_Name"
            },
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket_Name/*",
                "arn:aws:s3:::Bucket_Name"
            ]
        }

/* SSO User policy & IAM ARN will get from IAM Roles */

        {
            "Sid": "AllowSSOUserToRead",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::Account_ID:role/aws-reserved/sso.amazonaws.com/AWSReservedSSO_AdministratorAccess_ID"
            },
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket_Name/*",
                "arn:aws:s3:::Bucket_Name"
            ]
        }

/*  Bucket Cross Account Allow for Root User & 1st we need create policy in account A with required Bucket_Name*/

        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::Account_ID:root"
            },
            "Action": [
                "s3:ListBucket",
                "s3:GetObject*"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket_Name",
                "arn:aws:s3:::Bucket_Name/*"
            ]
        }

