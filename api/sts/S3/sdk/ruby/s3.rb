require 'aws-sdk-s3' # AWS SDK for s3 operation
require 'pry' # interaction shell for debugging
require 'securerandom' # for generating secure random strings (UUIDs)

# S3 Bucket Configuration
bucket_name = ENV['BUCKET_NAME'] # fetching bucket name from enviromental variables
region = 'us-east-1' # aws region where the bucket will be created
puts bucket_name

# now we would create our selves a client to work with in s3
client = Aws::S3::Client.new

# create an s3 bucket
resp = client.create_bucket({
    bucket: bucket_name, # name of the bucket
})
# binding.pry

# Create the S3 bucket
if region == 'us-east-1'
    resp = client.create_bucket({
        bucket: bucket_name # name of the bucket
    })
else
    resp = client.create_bucket({
        bucket: bucket_name,
        create_bucket_configuration: {
            location_constraint: region
        }
    })
end

# determine the number of files to create and upload
number_of_files = 1+ rand(6) # generating a random number between 1 and 6
puts "number_of_files: #{number_of_files}"

# loop to create and upload each file
number_of_files.times.each do |i|
    puts "i: #{i}"
    filename = "file_#{i}.txt" # generating filename for each file
    output_path = "/tmp/#{filename}" # specifying the output patth for the file

    File.open(output_path, "w") do |f|
        f.write(SecureRandom.uuid)
    end

    # open and read the file to binary mode, then upload it to S3
    File.open(output_path, 'rb') do |f| # 'rb' mode for reading binary data
        client.put_object(              # uploading the file to s3
            bucket: bucket_name,        # bucket to upload to
            key: filename,              # key (filename) for the object in the bucket
            body: f                     # file content
        )
    end
end