# Quick Start — Millings Evidence Integrity Branch™

## Step 1 — Create a file

```bash
echo "Hello World" > sample.txtStep 2 — Generate hash
sha256sum sample.txtCopy the hash.

⸻

Step 3 — Verify./verification/mccl-verify.sh sample.txt <your_hash>
Step 4 — Confirm

Expected output:STATUS: VERIFIED
Integrity confirmed — artifact unchangedStep 5 — Package Evidence

Use:artifacts/sample-proof/evidence-package.mdFill in:
	•	Hash
	•	Timestamp
	•	Context

⸻

Result

You now have:
	•	A verifiable artifact
	•	A reproducible validation method
	•	A structured evidence package---

## 🔹 Commit message

```text
Add quickstart guide for evidence verification
