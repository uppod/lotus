package ffiwrapper

import "github.com/ipfs/go-cid"

type CCTemplate struct {
	exist  bool
	sector []byte
	cid    cid.Cid
}
