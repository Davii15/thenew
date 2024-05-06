# Get parameters from the POST request or set them to empty strings if they don't exist
session_id = params["session_id"] || ""
service_code = params["service_code"] || ""
phonenumber = params["phonenumber"] || ""
test = params["test"] || ""
response = "" # Initialize response variable

# Check the value of test and construct response accordingly
if test == " "
  response += "CON  What would you want to check \n"
  response += "1 . My Account No \n"
  response += "2 . My Phone Number\n"
elsif test == "1"
  response += "CON  choose the account information you want to view \n"
  response += "1 . Account Number\n"
  response += "2 . Account Balance\n"
elsif test == "2"
  response += "END Your Phone number is #{phonenumber}"
elsif test == "1*1"
  account_number = "ac4041"
  response += "END Your account number is #{account_number}"
elsif test == "1*2"
  account_balance = 34000
  response += "END Your account balance is #{account_balance}"
end

content_type :text
response