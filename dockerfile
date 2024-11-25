# Use an Golang image as base image for buildimg the applicaiton
FROM golang:1.21

# Set current working directory the contaniner
WORKDIR /app

# Copy go mod and sum files 
COPY go.mod go.sum ./ 
RUN go mod dowload

# Dowload all dependencies RUN go mod dowload 
#COPY . . 
COPY *.go ./

# Build the GO application 
RUN go build -o main .

# Copy the built application from the builder stage 
# COPY --from=builder /app/main .

# Expose the port on the application runs
EXPOSE 8080

# Command to run the executable 
CMD ["./main"]