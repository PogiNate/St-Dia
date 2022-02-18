"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestStDia,
	#superclass : #PackageManifest,
	#category : #'StDia-Manifest'
}

{ #category : #'code-critics' }
ManifestStDia class >> ruleUtilityMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#DiaInterval #nextEvent: #false)) #'2022-02-17T17:20:55.943771-07:00') )
]
