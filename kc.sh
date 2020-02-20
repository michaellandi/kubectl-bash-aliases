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
    kc get pods -w
}

function kl {
    kc logs $*
}

function klf {
    kc logs -f $*
}

function ke {
    kc exec -it $*
}

function ks {
    kc scale deployment $0 --replicas=$1
}
