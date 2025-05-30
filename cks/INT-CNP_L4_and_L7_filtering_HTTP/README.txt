🛡️ Lab: Enforce HTTP-level Access with Cilium

🧠 Difficulty: Intermediate  
🧩 Domain : Minimize Microservice Vulnerabilities  
⏱️ Estimated Time: 10-15 minutes

🎯 Goal:  
Leverage Cilium’s L7-aware network policies to restrict HTTP access based on request paths and pod labels.

📌 Your mission:
1. Deploy an *Ingress* Cilium Network Policy named `endpoints-policy` in `team-silver` namespace that :
- Allow all pods in the namespace to access httpbin server with `/env` in HTTP with GET method.
- Only allow pods admin-tester to access httpbin server with `/ip` in HTTP with GET method.
2. Deploy another pod `user-tester` (without any label) in the `default` namespace :
- Modifty the Cilium Network Policy named `endpoints-policy` to allow `/env` but no `/ip`

🧰 Context:
- A namespace `team-silver` is created.
- A deployment named `httpbin` is running an HTTP server exposing throught `httpbin-svc` on port 8080 several endpoints.
- A pod labeled `role=admin` and another without this label will be provided for testing.

✅ Expected:
- All pods should succeed with requests to `/env`.
- Only `role=admin` pods should succeed when calling `/ip`.

🧹 A `reset.sh` script is available to clean the cluster between attempts.
