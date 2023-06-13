%dw 2.0
output application/json
var keys = ['Name','Role','experience']
var values = ['khasim','mulesoft developer','3years']
---
//Here I Have combined the two arrays into one single json object by using map function
{
    (
        keys map (
            ($): values[$$]
        )
    )
}


/*
o/p:
{
  "Name": "khasim",
  "Role": "mulesoft developer",
  "experience": "3years"
}
*/
