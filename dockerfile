# Use an Golang image as base image for buildimg the applicaiton
FROM golang:1.21 AS builder

# Set current working directory the contaniner
WORKDIR /app

# Copy go mod and sum files 
COPY go.mod go.sum ./ 

# Dowload all dependencies RUN go mod dowload 
COPY . . 

# Build the GO application 
RUN go build -o main .

# Use the working directory in the final container
WORKDIR /app 

# Copy the built application from the builder stage 
COPY --from=builder /app/main .

# Expose the port on the application runs
EXPOSE 8080

# Command to run the executable 
CMD ["./main"]
