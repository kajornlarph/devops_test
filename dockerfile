# Use an Golang image as base image for buildimg the applicaiton
FROM golang:1.23

# Set current working directory the contaniner
WORKDIR /app

# Copy go mod and sum files 
COPY go.mod go.sum ./ 

# Dowload go module 
RUN go mod dowload

# Copy the rest the application 
COPY . . 


# Build the GO application 
RUN go build -o main .

# Expose the port on the application runs
EXPOSE 8080

# Command to run the executable 
CMD ["./main"]