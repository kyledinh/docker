## Compare object storage to block storage, and explain which one is preferable when available

### Block storage
Block storage is more flexible than file system storage, which makes it easier to adapt block storage for container environments. The only big challenge is making sure that block storage data is available across an environment composed of multiple hosts. This can be resolved through distributed storage.

### Object storage
Object storage can be more complex to implement because it relies on REST calls, but the scalability that object storage provides makes it a good choice for container environments where massive scalability is a priority.

### File system storage
File system storage is probably the most awkward match for containers because file systems were not originally designed with portability in mind. As I’ve noted, however, there are ways to implement container-friendly file storage systems; this is usually done by distributing a file system across multiple servers

[docs](https://rancher.com/block-object-file-storage-containers/)

compare-object-storage-to-block-storage-and-explain-which-one-is-preferable-when-available.md
