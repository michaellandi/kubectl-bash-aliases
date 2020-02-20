alias start=open

function kns {
  kubectl config set-context --current --namespace="$1"
}

function k {
  kubectl $*
}

function kgd {
    k get deployment
}

function kgp {
    k get pods
}

function kgpw {
    k get pods -w
}

function kl {
    k logs $*
}

function klf {
    k logs -f $*
}

function ke {
    k exec -it $*
}

function ks {
    k scale deployment $0 --replicas=$1
}
