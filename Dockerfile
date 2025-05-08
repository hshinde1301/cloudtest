apiVersion: v1
kind: Service
metadata:
  name: cloudtest
  labels:
    app: cloudtest
spec:
  selector:
    app: cloudtest
  type: LoadBalancer
  ports:
    - port: 8080
      targetPort: 80
      nodePort: 31200
