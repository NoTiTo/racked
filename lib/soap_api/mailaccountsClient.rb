#!/usr/bin/env ruby
require 'mailaccountsDriver.rb'

endpoint_url = ARGV.shift
obj = UtilsSoapPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   getDomainSettings(resellerUsername, resellerPassword, hostName, aliases, maxMbxSize, maxNumUsers, allowWirelessAccess, adminUsername, adminPassword)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxMbxSize      Int - {http://www.w3.org/2001/XMLSchema}int
#   maxNumUsers     Int - {http://www.w3.org/2001/XMLSchema}int
#   allowWirelessAccess Short - {http://www.w3.org/2001/XMLSchema}short
#   adminUsername   C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminPassword   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxMbxSize      Int - {http://www.w3.org/2001/XMLSchema}int
#   maxNumUsers     Int - {http://www.w3.org/2001/XMLSchema}int
#   allowWirelessAccess Short - {http://www.w3.org/2001/XMLSchema}short
#   adminUsername   C_String - {http://www.w3.org/2001/XMLSchema}string
#   adminPassword   C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = aliases = maxMbxSize = maxNumUsers = allowWirelessAccess = adminUsername = adminPassword = nil
puts obj.getDomainSettings(resellerUsername, resellerPassword, hostName, aliases, maxMbxSize, maxNumUsers, allowWirelessAccess, adminUsername, adminPassword)

# SYNOPSIS
#   getDomainStats(resellerUsername, resellerPassword, hostName, numUsers, diskSpace)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#   diskSpace       Double - {http://www.w3.org/2001/XMLSchema}double
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#   diskSpace       Double - {http://www.w3.org/2001/XMLSchema}double
#
resellerUsername = resellerPassword = hostName = numUsers = diskSpace = nil
puts obj.getDomainStats(resellerUsername, resellerPassword, hostName, numUsers, diskSpace)

# SYNOPSIS
#   getDomainNumUsers(resellerUsername, resellerPassword, hostName, numUsers)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = hostName = numUsers = nil
puts obj.getDomainNumUsers(resellerUsername, resellerPassword, hostName, numUsers)

# SYNOPSIS
#   getDomainNumUsersActive(resellerUsername, resellerPassword, hostName, active, numUsers)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          C_String - {http://www.w3.org/2001/XMLSchema}string
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = hostName = active = numUsers = nil
puts obj.getDomainNumUsersActive(resellerUsername, resellerPassword, hostName, active, numUsers)

# SYNOPSIS
#   getDomainNumUserAliases(resellerUsername, resellerPassword, hostName, numAliases)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numAliases      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numAliases      Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = hostName = numAliases = nil
puts obj.getDomainNumUserAliases(resellerUsername, resellerPassword, hostName, numAliases)

# SYNOPSIS
#   getDomainMXRecords(resellerUsername, resellerPassword, hostName, mxRecordArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   mxRecordArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   mxRecordArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = mxRecordArray = nil
puts obj.getDomainMXRecords(resellerUsername, resellerPassword, hostName, mxRecordArray)

# SYNOPSIS
#   getAllDomains(resellerUsername, resellerPassword, hostNameArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostNameArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   hostNameArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostNameArray = nil
puts obj.getAllDomains(resellerUsername, resellerPassword, hostNameArray)

# SYNOPSIS
#   getAllDomainsStats(resellerUsername, resellerPassword, hostnameStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostnameStatArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   hostnameStatArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostnameStatArray = nil
puts obj.getAllDomainsStats(resellerUsername, resellerPassword, hostnameStatArray)

# SYNOPSIS
#   getAllDomainsSettings(resellerUsername, resellerPassword, hostnameSettingArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostnameSettingArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   hostnameSettingArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostnameSettingArray = nil
puts obj.getAllDomainsSettings(resellerUsername, resellerPassword, hostnameSettingArray)

# SYNOPSIS
#   getAllDomainsUserCount(resellerUsername, resellerPassword, numUsers)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numUsers        Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = numUsers = nil
puts obj.getAllDomainsUserCount(resellerUsername, resellerPassword, numUsers)

# SYNOPSIS
#   getAllDomainsMXRecords(resellerUsername, resellerPassword, mxRecordArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   mxRecordArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   mxRecordArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = mxRecordArray = nil
puts obj.getAllDomainsMXRecords(resellerUsername, resellerPassword, mxRecordArray)

# SYNOPSIS
#   setNobodyAlias(resellerUsername, resellerPassword, hostName, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = emailString = nil
puts obj.setNobodyAlias(resellerUsername, resellerPassword, hostName, emailString)

# SYNOPSIS
#   removeNobodyAlias(resellerUsername, resellerPassword, hostName)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = nil
puts obj.removeNobodyAlias(resellerUsername, resellerPassword, hostName)

# SYNOPSIS
#   getDomainUsers(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.getDomainUsers(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   getDomainUsersString(resellerUsername, resellerPassword, hostName, userArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userArrayStr = nil
puts obj.getDomainUsersString(resellerUsername, resellerPassword, hostName, userArrayStr)

# SYNOPSIS
#   getDomainUsersStringAlpha(resellerUsername, resellerPassword, hostName, indexChar, active, userArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   indexChar       C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = indexChar = active = userArrayStr = nil
puts obj.getDomainUsersStringAlpha(resellerUsername, resellerPassword, hostName, indexChar, active, userArrayStr)

# SYNOPSIS
#   getDomainUsersSpamStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userArrayStr = nil
puts obj.getDomainUsersSpamStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)

# SYNOPSIS
#   getDomainUsersSafeListStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userArrayStr = nil
puts obj.getDomainUsersSafeListStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)

# SYNOPSIS
#   getDomainUsersBlackListStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArrayStr    C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userArrayStr = nil
puts obj.getDomainUsersBlackListStatusString(resellerUsername, resellerPassword, hostName, userArrayStr)

# SYNOPSIS
#   checkUserExists(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.checkUserExists(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   addUser(resellerUsername, resellerPassword, hostName, userID, password, setActive, firstName, lastName, streetAddress, city, state, country, postalCode, telephone, organization, department)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   firstName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   lastName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   streetAddress   C_String - {http://www.w3.org/2001/XMLSchema}string
#   city            C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   postalCode      C_String - {http://www.w3.org/2001/XMLSchema}string
#   telephone       C_String - {http://www.w3.org/2001/XMLSchema}string
#   organization    C_String - {http://www.w3.org/2001/XMLSchema}string
#   department      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = password = setActive = firstName = lastName = streetAddress = city = state = country = postalCode = telephone = organization = department = nil
puts obj.addUser(resellerUsername, resellerPassword, hostName, userID, password, setActive, firstName, lastName, streetAddress, city, state, country, postalCode, telephone, organization, department)

# SYNOPSIS
#   deleteUser(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.deleteUser(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   modifyUser(resellerUsername, resellerPassword, hostName, userID, password, setActive, firstName, lastName, streetAddress, city, state, country, postalCode, telephone, organization, department)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   firstName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   lastName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   streetAddress   C_String - {http://www.w3.org/2001/XMLSchema}string
#   city            C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   country         C_String - {http://www.w3.org/2001/XMLSchema}string
#   postalCode      C_String - {http://www.w3.org/2001/XMLSchema}string
#   telephone       C_String - {http://www.w3.org/2001/XMLSchema}string
#   organization    C_String - {http://www.w3.org/2001/XMLSchema}string
#   department      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = password = setActive = firstName = lastName = streetAddress = city = state = country = postalCode = telephone = organization = department = nil
puts obj.modifyUser(resellerUsername, resellerPassword, hostName, userID, password, setActive, firstName, lastName, streetAddress, city, state, country, postalCode, telephone, organization, department)

# SYNOPSIS
#   modifyUserPassword(resellerUsername, resellerPassword, hostName, userID, password)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = password = nil
puts obj.modifyUserPassword(resellerUsername, resellerPassword, hostName, userID, password)

# SYNOPSIS
#   changeUserPassword(resellerUsername, resellerPassword, hostName, userID, oldPassword, newPassword)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   oldPassword     C_String - {http://www.w3.org/2001/XMLSchema}string
#   newPassword     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = oldPassword = newPassword = nil
puts obj.changeUserPassword(resellerUsername, resellerPassword, hostName, userID, oldPassword, newPassword)

# SYNOPSIS
#   getUserAttributes(resellerUsername, resellerPassword, hostName, userID, attributeString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   attributeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   attributeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = attributeString = nil
puts obj.getUserAttributes(resellerUsername, resellerPassword, hostName, userID, attributeString)

# SYNOPSIS
#   getUsersWithFilterStr(resellerUsername, resellerPassword, hostName, filterStr, usersStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   filterStr       C_String - {http://www.w3.org/2001/XMLSchema}string
#   usersStr        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   usersStr        C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = filterStr = usersStr = nil
puts obj.getUsersWithFilterStr(resellerUsername, resellerPassword, hostName, filterStr, usersStr)

# SYNOPSIS
#   getUserMailForward(resellerUsername, resellerPassword, hostName, userID, forwardEmailString, saveCopy)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   forwardEmailString C_String - {http://www.w3.org/2001/XMLSchema}string
#   saveCopy        Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   forwardEmailString C_String - {http://www.w3.org/2001/XMLSchema}string
#   saveCopy        Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = forwardEmailString = saveCopy = nil
puts obj.getUserMailForward(resellerUsername, resellerPassword, hostName, userID, forwardEmailString, saveCopy)

# SYNOPSIS
#   setUserMailForward(resellerUsername, resellerPassword, hostName, userID, forwardEmailString, saveCopy)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   forwardEmailString C_String - {http://www.w3.org/2001/XMLSchema}string
#   saveCopy        Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = forwardEmailString = saveCopy = nil
puts obj.setUserMailForward(resellerUsername, resellerPassword, hostName, userID, forwardEmailString, saveCopy)

# SYNOPSIS
#   removeUserMailForward(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.removeUserMailForward(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getUserMailVacation(resellerUsername, resellerPassword, hostName, userID, vacationMsg, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   vacationMsg     C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   vacationMsg     C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = vacationMsg = enabled = nil
puts obj.getUserMailVacation(resellerUsername, resellerPassword, hostName, userID, vacationMsg, enabled)

# SYNOPSIS
#   setUserMailVacation(resellerUsername, resellerPassword, hostName, userID, vacationMsg, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   vacationMsg     C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = vacationMsg = enabled = nil
puts obj.setUserMailVacation(resellerUsername, resellerPassword, hostName, userID, vacationMsg, enabled)

# SYNOPSIS
#   setUserMailboxMaxSize(resellerUsername, resellerPassword, hostName, userID, maxMbxSize)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxMbxSize      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = maxMbxSize = nil
puts obj.setUserMailboxMaxSize(resellerUsername, resellerPassword, hostName, userID, maxMbxSize)

# SYNOPSIS
#   getUserMailboxMaxSize(resellerUsername, resellerPassword, hostName, userID, maxMbxSize)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxMbxSize      Double - {http://www.w3.org/2001/XMLSchema}double
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   maxMbxSize      Double - {http://www.w3.org/2001/XMLSchema}double
#
resellerUsername = resellerPassword = hostName = userID = maxMbxSize = nil
puts obj.getUserMailboxMaxSize(resellerUsername, resellerPassword, hostName, userID, maxMbxSize)

# SYNOPSIS
#   getUserLastLogin(resellerUsername, resellerPassword, hostName, userID, lastlogin)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   lastlogin       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   lastlogin       C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = lastlogin = nil
puts obj.getUserLastLogin(resellerUsername, resellerPassword, hostName, userID, lastlogin)

# SYNOPSIS
#   getUserActiveStatus(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.getUserActiveStatus(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getUserStatus(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.getUserStatus(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getCurrentUserMailboxSize(resellerUsername, resellerPassword, hostName, userID, currentMbxSize)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   currentMbxSize  Double - {http://www.w3.org/2001/XMLSchema}double
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   currentMbxSize  Double - {http://www.w3.org/2001/XMLSchema}double
#
resellerUsername = resellerPassword = hostName = userID = currentMbxSize = nil
puts obj.getCurrentUserMailboxSize(resellerUsername, resellerPassword, hostName, userID, currentMbxSize)

# SYNOPSIS
#   getDomainAllUserLastLogin(resellerUsername, resellerPassword, hostName, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userStatArray = nil
puts obj.getDomainAllUserLastLogin(resellerUsername, resellerPassword, hostName, userStatArray)

# SYNOPSIS
#   getDomainAllUserCurrentSize(resellerUsername, resellerPassword, hostName, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userStatArray = nil
puts obj.getDomainAllUserCurrentSize(resellerUsername, resellerPassword, hostName, userStatArray)

# SYNOPSIS
#   getDomainAllUserStats(resellerUsername, resellerPassword, hostName, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userStatArray = nil
puts obj.getDomainAllUserStats(resellerUsername, resellerPassword, hostName, userStatArray)

# SYNOPSIS
#   getDomainAllUserLastLoginActive(resellerUsername, resellerPassword, hostName, active, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = active = userStatArray = nil
puts obj.getDomainAllUserLastLoginActive(resellerUsername, resellerPassword, hostName, active, userStatArray)

# SYNOPSIS
#   getDomainAllUserCurrentSizeActive(resellerUsername, resellerPassword, hostName, active, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = active = userStatArray = nil
puts obj.getDomainAllUserCurrentSizeActive(resellerUsername, resellerPassword, hostName, active, userStatArray)

# SYNOPSIS
#   getDomainAllUserStatsActive(resellerUsername, resellerPassword, hostName, active, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = active = userStatArray = nil
puts obj.getDomainAllUserStatsActive(resellerUsername, resellerPassword, hostName, active, userStatArray)

# SYNOPSIS
#   getDomainAllUserStatsActiveString(resellerUsername, resellerPassword, hostName, active, userStatArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   active          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = active = userStatArrayStr = nil
puts obj.getDomainAllUserStatsActiveString(resellerUsername, resellerPassword, hostName, active, userStatArrayStr)

# SYNOPSIS
#   getDomainAllUsersForward(resellerUsername, resellerPassword, hostName, userForwardArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userForwardArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userForwardArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userForwardArray = nil
puts obj.getDomainAllUsersForward(resellerUsername, resellerPassword, hostName, userForwardArray)

# SYNOPSIS
#   checkAliasExists(resellerUsername, resellerPassword, hostName, v_alias)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = nil
puts obj.checkAliasExists(resellerUsername, resellerPassword, hostName, v_alias)

# SYNOPSIS
#   checkUserAvailable(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.checkUserAvailable(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getUserAliasesString(resellerUsername, resellerPassword, hostName, aliases)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = aliases = nil
puts obj.getUserAliasesString(resellerUsername, resellerPassword, hostName, aliases)

# SYNOPSIS
#   getUserAliasesStringAlpha(resellerUsername, resellerPassword, hostName, indexChar, aliases)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   indexChar       C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = indexChar = aliases = nil
puts obj.getUserAliasesStringAlpha(resellerUsername, resellerPassword, hostName, indexChar, aliases)

# SYNOPSIS
#   getGroupAliasesString(resellerUsername, resellerPassword, hostName, aliases)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliases         C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = aliases = nil
puts obj.getGroupAliasesString(resellerUsername, resellerPassword, hostName, aliases)

# SYNOPSIS
#   addAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = emailString = nil
puts obj.addAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)

# SYNOPSIS
#   addGroupAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = emailString = nil
puts obj.addGroupAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)

# SYNOPSIS
#   modifyAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = emailString = nil
puts obj.modifyAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)

# SYNOPSIS
#   modifyGroupAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = emailString = nil
puts obj.modifyGroupAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)

# SYNOPSIS
#   deleteAlias(resellerUsername, resellerPassword, hostName, v_alias)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = v_alias = nil
puts obj.deleteAlias(resellerUsername, resellerPassword, hostName, v_alias)

# SYNOPSIS
#   setAliasSingleAddress(resellerUsername, resellerPassword, hostName, v_alias, action, email)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   email           C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = v_alias = action = email = nil
puts obj.setAliasSingleAddress(resellerUsername, resellerPassword, hostName, v_alias, action, email)

# SYNOPSIS
#   getAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   v_alias         C_String - {http://www.w3.org/2001/XMLSchema}string
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   emailString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = v_alias = emailString = nil
puts obj.getAlias(resellerUsername, resellerPassword, hostName, v_alias, emailString)

# SYNOPSIS
#   getListUsers(resellerUsername, resellerPassword, hostName, listName, users)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   users           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   users           C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = listName = users = nil
puts obj.getListUsers(resellerUsername, resellerPassword, hostName, listName, users)

# SYNOPSIS
#   setListUsers(resellerUsername, resellerPassword, hostName, listName, users)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   listName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   users           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = listName = users = nil
puts obj.setListUsers(resellerUsername, resellerPassword, hostName, listName, users)

# SYNOPSIS
#   setDomainNotify(resellerUsername, resellerPassword, hostName, notifyPercentage, ccEmail, notifyMessage)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   notifyPercentage C_String - {http://www.w3.org/2001/XMLSchema}string
#   ccEmail         C_String - {http://www.w3.org/2001/XMLSchema}string
#   notifyMessage   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = notifyPercentage = ccEmail = notifyMessage = nil
puts obj.setDomainNotify(resellerUsername, resellerPassword, hostName, notifyPercentage, ccEmail, notifyMessage)

# SYNOPSIS
#   getDomainNotify(resellerUsername, resellerPassword, hostName, notifyPercentage, ccEmail, notifyMessage)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   notifyPercentage C_String - {http://www.w3.org/2001/XMLSchema}string
#   ccEmail         C_String - {http://www.w3.org/2001/XMLSchema}string
#   notifyMessage   C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   notifyPercentage C_String - {http://www.w3.org/2001/XMLSchema}string
#   ccEmail         C_String - {http://www.w3.org/2001/XMLSchema}string
#   notifyMessage   C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = notifyPercentage = ccEmail = notifyMessage = nil
puts obj.getDomainNotify(resellerUsername, resellerPassword, hostName, notifyPercentage, ccEmail, notifyMessage)

# SYNOPSIS
#   sendMailDomainUsersAll(resellerUsername, resellerPassword, hostName, mailFromName, mailReplyTo, mailSubject, mailBody)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   mailFromName    C_String - {http://www.w3.org/2001/XMLSchema}string
#   mailReplyTo     C_String - {http://www.w3.org/2001/XMLSchema}string
#   mailSubject     C_String - {http://www.w3.org/2001/XMLSchema}string
#   mailBody        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = mailFromName = mailReplyTo = mailSubject = mailBody = nil
puts obj.sendMailDomainUsersAll(resellerUsername, resellerPassword, hostName, mailFromName, mailReplyTo, mailSubject, mailBody)

# SYNOPSIS
#   addUsersBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.addUsersBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   modifyUsersBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.modifyUsersBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   deleteUsersBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.deleteUsersBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   setUsersActiveBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.setUsersActiveBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   getUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = aliasesArray = nil
puts obj.getUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)

# SYNOPSIS
#   addUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = aliasesArray = nil
puts obj.addUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)

# SYNOPSIS
#   deleteUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   aliasesArray    ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = aliasesArray = nil
puts obj.deleteUserAliasesBulk(resellerUsername, resellerPassword, hostName, aliasesArray)

# SYNOPSIS
#   addUserWithLdapAttributes(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   surname         C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userID = surname = password = setActive = attributesArray = nil
puts obj.addUserWithLdapAttributes(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArray)

# SYNOPSIS
#   addUserWithLdapAttributesString(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   surname         C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = surname = password = setActive = attributesArrayStr = nil
puts obj.addUserWithLdapAttributesString(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArrayStr)

# SYNOPSIS
#   modifyUserWithLdapAttributes(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   surname         C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArray ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userID = surname = password = setActive = attributesArray = nil
puts obj.modifyUserWithLdapAttributes(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArray)

# SYNOPSIS
#   modifyUserWithLdapAttributesString(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArrayStr)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   surname         C_String - {http://www.w3.org/2001/XMLSchema}string
#   password        C_String - {http://www.w3.org/2001/XMLSchema}string
#   setActive       Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   attributesArrayStr C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = surname = password = setActive = attributesArrayStr = nil
puts obj.modifyUserWithLdapAttributesString(resellerUsername, resellerPassword, hostName, userID, surname, password, setActive, attributesArrayStr)

# SYNOPSIS
#   addDomainVirus(resellerUsername, resellerPassword, hostName)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = nil
puts obj.addDomainVirus(resellerUsername, resellerPassword, hostName)

# SYNOPSIS
#   deleteDomainVirus(resellerUsername, resellerPassword, hostName)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = nil
puts obj.deleteDomainVirus(resellerUsername, resellerPassword, hostName)

# SYNOPSIS
#   getDomainVirus(resellerUsername, resellerPassword, hostName, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = enabled = nil
puts obj.getDomainVirus(resellerUsername, resellerPassword, hostName, enabled)

# SYNOPSIS
#   addUserVirus(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.addUserVirus(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   deleteUserVirus(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.deleteUserVirus(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getUserVirus(resellerUsername, resellerPassword, hostName, userID, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = enabled = nil
puts obj.getUserVirus(resellerUsername, resellerPassword, hostName, userID, enabled)

# SYNOPSIS
#   addUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.addUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   deleteUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.deleteUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   getUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userArray       ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = userArray = nil
puts obj.getUserVirusBulk(resellerUsername, resellerPassword, hostName, userArray)

# SYNOPSIS
#   addDomainSpam(resellerUsername, resellerPassword, hostName, filterLevel, action, actionValue)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = filterLevel = action = actionValue = nil
puts obj.addDomainSpam(resellerUsername, resellerPassword, hostName, filterLevel, action, actionValue)

# SYNOPSIS
#   deleteDomainSpam(resellerUsername, resellerPassword, hostName)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = nil
puts obj.deleteDomainSpam(resellerUsername, resellerPassword, hostName)

# SYNOPSIS
#   getDomainSpam(resellerUsername, resellerPassword, hostName, filterLevel, action, actionValue)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = filterLevel = action = actionValue = nil
puts obj.getDomainSpam(resellerUsername, resellerPassword, hostName, filterLevel, action, actionValue)

# SYNOPSIS
#   addUserSpam(resellerUsername, resellerPassword, hostName, userID, filterLevel, action, actionValue)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = filterLevel = action = actionValue = nil
puts obj.addUserSpam(resellerUsername, resellerPassword, hostName, userID, filterLevel, action, actionValue)

# SYNOPSIS
#   deleteUserSpam(resellerUsername, resellerPassword, hostName, userID)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = nil
puts obj.deleteUserSpam(resellerUsername, resellerPassword, hostName, userID)

# SYNOPSIS
#   getUserSpam(resellerUsername, resellerPassword, hostName, userID, filterLevel, action, actionValue)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   filterLevel     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action          C_String - {http://www.w3.org/2001/XMLSchema}string
#   actionValue     C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = filterLevel = action = actionValue = nil
puts obj.getUserSpam(resellerUsername, resellerPassword, hostName, userID, filterLevel, action, actionValue)

# SYNOPSIS
#   setDomainSpamCleaner(resellerUsername, resellerPassword, hostName, numDays, numEmails)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = numDays = numEmails = nil
puts obj.setDomainSpamCleaner(resellerUsername, resellerPassword, hostName, numDays, numEmails)

# SYNOPSIS
#   getDomainSpamCleaner(resellerUsername, resellerPassword, hostName, numDays, numEmails)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = numDays = numEmails = nil
puts obj.getDomainSpamCleaner(resellerUsername, resellerPassword, hostName, numDays, numEmails)

# SYNOPSIS
#   setUserSpamCleaner(resellerUsername, resellerPassword, hostName, userID, numDays, numEmails)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = numDays = numEmails = nil
puts obj.setUserSpamCleaner(resellerUsername, resellerPassword, hostName, userID, numDays, numEmails)

# SYNOPSIS
#   getUserSpamCleaner(resellerUsername, resellerPassword, hostName, userID, numDays, numEmails)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numDays         Short - {http://www.w3.org/2001/XMLSchema}short
#   numEmails       Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = numDays = numEmails = nil
puts obj.getUserSpamCleaner(resellerUsername, resellerPassword, hostName, userID, numDays, numEmails)

# SYNOPSIS
#   setDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = safeList = nil
puts obj.setDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeList)

# SYNOPSIS
#   setDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = safeList = nil
puts obj.setDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeList)

# SYNOPSIS
#   getDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = safeList = nil
puts obj.getDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeList)

# SYNOPSIS
#   getDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = safeList = nil
puts obj.getDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeList)

# SYNOPSIS
#   setUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = safeList = nil
puts obj.setUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)

# SYNOPSIS
#   setUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = safeList = nil
puts obj.setUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)

# SYNOPSIS
#   getUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = safeList = nil
puts obj.getUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)

# SYNOPSIS
#   getUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeList        C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = safeList = nil
puts obj.getUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeList)

# SYNOPSIS
#   setDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = blackList = nil
puts obj.setDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackList)

# SYNOPSIS
#   setDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = blackList = nil
puts obj.setDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackList)

# SYNOPSIS
#   getDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackList = nil
puts obj.getDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackList)

# SYNOPSIS
#   getDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackList = nil
puts obj.getDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackList)

# SYNOPSIS
#   setUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = blackList = nil
puts obj.setUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)

# SYNOPSIS
#   setUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = blackList = nil
puts obj.setUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)

# SYNOPSIS
#   getUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackList = nil
puts obj.getUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)

# SYNOPSIS
#   getUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackList       C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackList = nil
puts obj.getUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackList)

# SYNOPSIS
#   addDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = safeListEntries = nil
puts obj.addDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)

# SYNOPSIS
#   addDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = safeListEntries = nil
puts obj.addDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)

# SYNOPSIS
#   addDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackListEntries = nil
puts obj.addDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)

# SYNOPSIS
#   addDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackListEntries = nil
puts obj.addDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)

# SYNOPSIS
#   addUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = safeListEntries = nil
puts obj.addUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)

# SYNOPSIS
#   addUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = safeListEntries = nil
puts obj.addUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)

# SYNOPSIS
#   addUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackListEntries = nil
puts obj.addUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)

# SYNOPSIS
#   addUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackListEntries = nil
puts obj.addUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)

# SYNOPSIS
#   removeDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = safeListEntries = nil
puts obj.removeDomainSpamSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)

# SYNOPSIS
#   removeDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = safeListEntries = nil
puts obj.removeDomainSpamIPSafeList(resellerUsername, resellerPassword, hostName, safeListEntries)

# SYNOPSIS
#   removeDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackListEntries = nil
puts obj.removeDomainSpamBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)

# SYNOPSIS
#   removeDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = blackListEntries = nil
puts obj.removeDomainSpamIPBlackList(resellerUsername, resellerPassword, hostName, blackListEntries)

# SYNOPSIS
#   removeUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = safeListEntries = nil
puts obj.removeUserSpamSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)

# SYNOPSIS
#   removeUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   safeListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = safeListEntries = nil
puts obj.removeUserSpamIPSafeList(resellerUsername, resellerPassword, hostName, userID, safeListEntries)

# SYNOPSIS
#   removeUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackListEntries = nil
puts obj.removeUserSpamBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)

# SYNOPSIS
#   removeUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   blackListEntries C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = userID = blackListEntries = nil
puts obj.removeUserSpamIPBlackList(resellerUsername, resellerPassword, hostName, userID, blackListEntries)

# SYNOPSIS
#   setDomainSpamGreylist(resellerUsername, resellerPassword, hostName, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = enabled = nil
puts obj.setDomainSpamGreylist(resellerUsername, resellerPassword, hostName, enabled)

# SYNOPSIS
#   getDomainSpamGreylist(resellerUsername, resellerPassword, hostName, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = enabled = nil
puts obj.getDomainSpamGreylist(resellerUsername, resellerPassword, hostName, enabled)

# SYNOPSIS
#   setUserSpamGreylist(resellerUsername, resellerPassword, hostName, userID, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = enabled = nil
puts obj.setUserSpamGreylist(resellerUsername, resellerPassword, hostName, userID, enabled)

# SYNOPSIS
#   getUserSpamGreylist(resellerUsername, resellerPassword, hostName, userID, enabled)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   userID          C_String - {http://www.w3.org/2001/XMLSchema}string
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   enabled         Short - {http://www.w3.org/2001/XMLSchema}short
#
resellerUsername = resellerPassword = hostName = userID = enabled = nil
puts obj.getUserSpamGreylist(resellerUsername, resellerPassword, hostName, userID, enabled)

# SYNOPSIS
#   getMailAllotStorage(resellerUsername, resellerPassword, hostName, totalAllotExtraStorage)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   totalAllotExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   totalAllotExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = hostName = totalAllotExtraStorage = nil
puts obj.getMailAllotStorage(resellerUsername, resellerPassword, hostName, totalAllotExtraStorage)

# SYNOPSIS
#   getDomainUsersMailboxMaxSize(resellerUsername, resellerPassword, hostName, totalAllotExtraStorage, totalAllocatedExtraStorage, hostMailboxMaxSize, usersMailboxMaxSizeString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   totalAllotExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#   totalAllocatedExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#   hostMailboxMaxSize Int - {http://www.w3.org/2001/XMLSchema}int
#   usersMailboxMaxSizeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   totalAllotExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#   totalAllocatedExtraStorage Int - {http://www.w3.org/2001/XMLSchema}int
#   hostMailboxMaxSize Int - {http://www.w3.org/2001/XMLSchema}int
#   usersMailboxMaxSizeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = totalAllotExtraStorage = totalAllocatedExtraStorage = hostMailboxMaxSize = usersMailboxMaxSizeString = nil
puts obj.getDomainUsersMailboxMaxSize(resellerUsername, resellerPassword, hostName, totalAllotExtraStorage, totalAllocatedExtraStorage, hostMailboxMaxSize, usersMailboxMaxSizeString)

# SYNOPSIS
#   setDomainUsersMailboxMaxSize(resellerUsername, resellerPassword, hostName, usersMailboxMaxSizeString)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   usersMailboxMaxSizeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   usersMailboxMaxSizeString C_String - {http://www.w3.org/2001/XMLSchema}string
#
resellerUsername = resellerPassword = hostName = usersMailboxMaxSizeString = nil
puts obj.setDomainUsersMailboxMaxSize(resellerUsername, resellerPassword, hostName, usersMailboxMaxSizeString)

# SYNOPSIS
#   getDomainAllUserLastLoginAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   indexLetter     C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = indexLetter = userStatArray = nil
puts obj.getDomainAllUserLastLoginAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)

# SYNOPSIS
#   getDomainAllUserCurrentSizeAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   indexLetter     C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = indexLetter = userStatArray = nil
puts obj.getDomainAllUserCurrentSizeAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)

# SYNOPSIS
#   getDomainAllUserStatsAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   indexLetter     C_String - {http://www.w3.org/2001/XMLSchema}string
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   userStatArray   ArrayOfstring - {http://admin.excedent.com/mailaccounts/type/}ArrayOfstring
#
resellerUsername = resellerPassword = hostName = indexLetter = userStatArray = nil
puts obj.getDomainAllUserStatsAlpha(resellerUsername, resellerPassword, hostName, indexLetter, userStatArray)

# SYNOPSIS
#   ping(myMessage)
#
# ARGS
#   myMessage       C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#   myMessage       C_String - {http://www.w3.org/2001/XMLSchema}string
#
myMessage = nil
puts obj.ping(myMessage)

# SYNOPSIS
#   getRetCodeDesc(retCode)
#
# ARGS
#   retCode         Short - {http://www.w3.org/2001/XMLSchema}short
#
# RETURNS
#   result          C_String - {http://www.w3.org/2001/XMLSchema}string
#
retCode = nil
puts obj.getRetCodeDesc(retCode)

# SYNOPSIS
#   getDomainNumBcc(resellerUsername, resellerPassword, hostName, numBcc)
#
# ARGS
#   resellerUsername C_String - {http://www.w3.org/2001/XMLSchema}string
#   resellerPassword C_String - {http://www.w3.org/2001/XMLSchema}string
#   hostName        C_String - {http://www.w3.org/2001/XMLSchema}string
#   numBcc          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   result          Short - {http://www.w3.org/2001/XMLSchema}short
#   numBcc          Int - {http://www.w3.org/2001/XMLSchema}int
#
resellerUsername = resellerPassword = hostName = numBcc = nil
puts obj.getDomainNumBcc(resellerUsername, resellerPassword, hostName, numBcc)


