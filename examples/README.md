# Notes on 1.2 STIX Idioms translated to STIX 2.0 (json)

## General Comments
* All of these idioms will be placed within a Package, even if they previously weren’t.  There is one idiom that contains reports, otherwise, they were avoided.
* There is a lot of repetition since all TLOs require things like: created_time, spec_version, etc.  It might be useful to specify that any missing required properties can be obtained from a parent object.
* Since created_date is required for all TLOs, if it was missing, the common one from the idiom was often used.  However, created_times on identities don't seem to fit that paradigm (i.e., identities seem more long-lived than arbitrary packages).
* All CybOX object type names retain the –object suffix
* Relationships require the specification of direction. Since all STIX 1.2 relationships were unidirectional, that has been set to “true” for all relationships.
* In CybOX objects, do we need spec_version, and created_time?
* Is Package a TLO - currently it inherits from cti-core?
* created_by_ref information is missing from the idioms, for the most part 
* TLO arrays are specified in alphabetical order in a Package
* indicator:confidence isn't fully defined, even though it is a required property.  It was used only if in the original idiom.

[STIX 1.2 XML Idioms](http://stixproject.github.io/documentation/idioms/)

## Comments for Individual Idioms

Idioms in italics were not translated

### *Assets Affected in an Incident*
* This idiom and the currently defined asset in 2.0 are too disimilar at this time.

### CVE in an Exploit Target
none

### Command and Control IP List
none

### Course of Action to Block Network Traffic
* How do we handle "statement"
* efficacy property is mssing from 2.0
* objective property is missing from 2.0
    
### Defining Campaigns vs Threat Actors
* victim-targeting.target is not really defined sufficently to complete this idiom
    
### File Hash Reputation
* There was an indicated TTP, which I assumed is malware.
* Malware requires a “kind”, but the idiom gave no indication what that should be

### *Identifying a Threat Actor Profile*
* how do we deal with CIQ is still undecided

### Incident Essentials - Who, What, When
* Reporter and victim become identities, which are associated with the incident via relationships, "reported-by" and "victim-of", respecitively
* No relationship kinds defined for incidents
* incidents not fleshed out, so nowhere to put:
 * time.initial_compromise, created time_of_initial_compromise property
 * time.incident_discovery, created time_of_incident_discovery property
 * time.restoration_achieved, created time_of_restoration_achieved property
 * time.incident_reported, created time_of_incident_reportedproperty
    
### Incident vs. Indicator (as Indicators)
none

### Incident vs. Indicator (as Incidents)
* Incidents not fleshed out, so no where to put time.first_malicious_action (created "time_of_first_malicious_action" property)
* Relationships (none defined for Incidents)
 * used leverages: incident -> malware
 * used evidenced-by: incident -> observation
* The relationship name "uses-malware" was used in the idiom.  Maybe use it instead of "leverages", or generalize and just use "uses" a la "indicates"
        
### Incident vs. Indicator (as both)
* same as Incident vs. Indicator (as Incidents)

### Incident with Related Observables
none

### Indicator for C2 IP Address
* incomplete: what kind of TTP should be used?
    
### Indicator for Malicious URL
* no timestamps specified
    
### Indicator to Campaign Relationship
none

### Kill Chains in STIX
* no name property defined for Identity
* no name property defined for Kill Chain, used title property
* no name property defined for Kill Chain Phase, used title property
* no pattern in the idiom for the indicator
* how do we add extra properties on relationships - ordinality, and can/should it be required?

### Linking an Indicator to Kill Chain Phase
* no pattern in the idiom for the indicator
* no name property defined for Kill Chain, used title property 
* no name property defined for Kill Chain Phase, used title property 
* how do we add extra properties on relationships - ordinality, and can/should it be required?
    
### Malicious E-mail Indicator With Attachment
* TTP is an attack-pattern
* why are there two indicators?

### *Malware Characterization using MAEC*
* not much to this, basically a MAEC wrapper
    
### Malware Indicator for File Hash
* malware.name -> malware.title. In MAEC?

### Malware Used During an Incident
* malware.name -> malware.title. In MAEC?
* The relationship name "uses-malware" was used in the idiom.  Maybe use it instead of "leverages", or generalize and just use "uses" a la "indicates"
    
### *OpenIOC Test Mechanism*
* Is this idiom useful in 2.0?

### Plain Wrapper Around Multiple Reports
* added malware kind because it is required - assumed it was a RAT based on its name
* is there a reason that the title of the second report mentioned indicators, but there are none in the idiom?
    
### *Snort Test Mechanism*
* Not part of 2.0 yet

### Threat Actor Leveraging Attack Patterns and Malware
* no timestamps

### *Victim Targeting by Sectors*
* how do we deal with CIQ is still undecided

### Victim Targeting for a Campaign
* victim-targeting.target is not really defined sufficently to complete this idiom
    
### *Yara Test Mechanism*
* Not part of 2.0 yet

