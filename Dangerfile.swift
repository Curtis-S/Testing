import Danger 
let danger = Danger()
let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined(separator: ", "))")

let changelogChanged = editedFiles.contains("CHANGELOG.md")

if !changelogChanged  {
  warn("No CHANGELOG entry added.")
} else {
    warn(" CHANGELOG entry added.")
}
