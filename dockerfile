# Use an Golang image as base image for buildimg the applicaiton
FROM golang:1.23-alpine

# Set current working directory the contaniner
WORKDIR /app

# Copy go mod and sum files 
COPY go.mod go.sum ./ 

# Dowload go module 
RUN go mod dowload && go mod verify

# Copy the rest the application 
COPY . . 

# Build the GO application 
RUN go build -v -o /app . 

# Expose the port on the application runs
EXPOSE 8080

# Command to run the executable 
CMD ["app"]