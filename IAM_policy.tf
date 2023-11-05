/* all actions for cp-n* Buckets */
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:List*",
                "s3:Get*"
            ],
            "Resource": [
                "arn:aws:s3:::Bucket_Name",
                "arn:aws:s3:::Bucket_Name/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::cp-n*"
            ]
        }
    ]
}

