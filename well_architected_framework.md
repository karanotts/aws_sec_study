# * Operational Excellence
## Run, monitor and improve systems
### Design Principles
- operations as code (`CloudFormation`, `Code Pipeline`)
    - define architecture, procedures, operations and changes as code
    - execute code based on triggers to enable consistent response and limit human error
- annotate documentation
    - keep documentation up to date
    - annotate documentation at builds
- frequent small changes 
    - allow for quick rollbacks is something goes wrong
- refine operations procedures frequently
- anticipate failure
    - https://aws.amazon.com/gameday/
- continuous learning and improving
### Best Practices
- prepare
    - design workloads with metrics and reporting
    - gather information about apps, infra, behavious
    - use sandboxes and testing environments
- operate
    - consider costs
    - ask if you achived your goals
- evolve
    - evaluate environment and processes
    - share knowledge
    - small improvement over big changes
<hr/><hr/><br />

# * Security
## Protect your data, systems and assets
### Design Principles
- strong identity foundation
    - least privilege principle
    - segregation of duties
    - use proper IAM roles and permissions
    - define appropriate authorisation
- traceability
    - audit logs
    - monitoring
    - logging
    - alerting
- layered security
    - defense in depth
    - more protection is better than less
- automate best practices (`Config`, `CloudTrail`)
    - security as code
- protect data in transit and at rest
    - encryption
    - tokenisation
    - masking
    - access control policies
- keep people away from data
    - reduce or eliminate manual access to production data
    - do not use production data in test 
- prepare for security events
    - incident management
    - define playbooks
    - run incident simulations
    - automate incident response
- minimise your attack surface
### Best Practices
- identity and access control
    - who can do what to what
- detective controls
    - scan and alert unwanted changes
- infrastructure protection
    - spread infra over AZs to reduce impact of failure or attack
- data protection
    - your data - your problem
    - consider ecryption, storage, access
- incident response
<hr/><hr/><br />

# * Reliability
## Set up environent with ability to recover from incidents or disruptions
### Design Principles
- test backups and recovery
- automate stuff
    - script failure types and scenarios and automate response
- scale horizontally to improve availability
- monitor (not guess!) capacity
- manage change
### Best Practices
- foundations
    - well planned systems with monitoring enabled
    - mechanisms to handle changes in demand (elasticity, scalability)
- change management
- failure management
    - expect stuff to fail and prepare for it
<hr/><hr/><br />

# * Performance efficiency
## Design for, and maintain efficiency
### Design Principles
- democratize advanced technologies
    - don't reinvent the wheel
    - use vendor solutions where it makes sense
- go global in minutes
    - move your stuff where your users are
- use serverless
    - worry less about infra about more about building stuff
- experiment
- mechanical sympathy
    - use right tools for the job
    - investigate patterns to pick maching solutions
### Best Practices
- selection
    - use data driven approach (metrics, logs) to improve efficiency
- review
    - review and reevaluate your choices 
- monitoring
- trade-offs
    - what is worth sacrificing?
    - must haves vs good to haves
<hr/><hr/><br />

# * Cost optimisation
## Don't pay Bezos more than you absolutely have to
### Design Principles
- adopt consumption model
    - be flexible 
    - don't overprovision
- measure efficiency
- stop spending money on data center operations
- analyse and attribute expenditures
    - use tags to tie costs to spenders
    - review spending to see if somebody didn't set up bitcoin mining ops at your expense
- user managed and application-level services to reduce cost of ownership
### Best Practices
- expenditure awareness
    - think before you buy
    - create budgets and alerts
    - don't go crazy with that credit card only because it's easy to click and create stuff
- matching supply and demand
    - scale up and down
- optimising over time
    - review resources
    - clean up unused stuff
    - turn off sandbox resources during holidays etc