# Azure DevOps Interview Questions

### Complete CI/CD Pipeline process:

Scenario: How does the Azure DevOps CI/CD Pipeline look in your organization ?

Continuous Integration (CI):

    Triggers on code changes.
    Clones code from repository.
    Runs unit tests and static code analysis.
    Builds artifacts (e.g., compiled code, container images).
    Stores artifacts in Azure Pipelines artifacts for deployment.

Continuous Delivery (CD):

    Triggers on successful CI completion or manually.
    Deploys artifacts to designated environments (staging, production).
    Runs environment-specific tests (e.g., integration, acceptance).
    Approvals or gates can be implemented before deployment.
    Optionally, rolls back deployments if issues arise.

### Securing Sensitive Information in Pipelines:

Scenario: You need to securely store API keys and other secrets used in your pipeline tasks. How would you ensure their protection while maintaining pipeline functionality?

Answer: Explain using Azure Key Vault to store secrets and access them using managed identities or service connections with minimal privileges. Emphasize avoiding hardcoding secrets in the pipeline script.

### Integrating Azure Container Registry (ACR) with Pipelines:

Scenario: Your application uses Docker containers. How would you integrate ACR with Azure Pipelines for building, pushing, and deploying container images?

Answer: Describe the process of configuring Docker tasks in the pipeline to build images, authenticate with ACR using service connections, push images to the registry, and deploy them to specific environments.

### Debugging Pipeline Failures:

Scenario: Your pipeline consistently fails at a specific stage. How would you approach troubleshooting and identifying the root cause of the issue?

Answer: Highlight utilizing built-in debugging tools like logs, pipeline diagnostics, and Azure Monitor, alongside manual code review and environment checks. Mention potential causes like resource constraints, task configuration errors, or infrastructure issues.

### Handling Code Merges and Rollbacks in Pipelines:

Scenario: You discover a critical bug in the recently deployed production environment. How would you leverage Azure Pipelines for a rollback and ensure safe merging of a fix?

Answer: Explain using deployment environments and conditional triggers to target specific environments. Discuss leveraging branching strategies and continuous deployment practices to revert changes and integrate a fix seamlessly.

### Utilizing Azure Runners for Self-Hosted Environments:

Scenario: Your company has specific infrastructure requirements and needs to run pipelines on self-hosted machines. How would you leverage Azure Runners for this purpose?

Answer: Discuss configuring and managing self-hosted runners, ensuring security considerations like network isolation and access control. Mention using the appropriate runner OS and tools based on your project needs.

### Implementing Role-Based Access Control (RBAC) in Pipelines:

Scenario: Your team has various roles with different access needs. How would you configure RBAC within Azure Pipelines to ensure users have appropriate permissions?

Answer: Explain leveraging built-in roles and custom definitions to grant access to pipelines, repositories, and resources. Highlight the importance of least privilege and separation of duties principles.

### Automating Infrastructure Provisioning with Pipelines:

Scenario: You want to automate infrastructure provisioning and deployment alongside your application code. How would you integrate infrastructure as code (IaC) tools like Terraform with Azure Pipelines?

Answer: Discuss using tasks like Azure Resource Manager or Terraform tasks to manage infrastructure creation and deletion within the pipeline workflow. Mention benefits like faster deployments and improved consistency.

### Maintaining Pipeline Security Throughout the CI/CD Process:

Scenario: How would you ensure overall security within your Azure Pipelines throughout the CI/CD process, from code building to deployment?

Answer: Discuss a holistic approach, including secure code practices, vulnerability scanning, container image scanning, service principal usage with least privilege, and regular pipeline audits.
