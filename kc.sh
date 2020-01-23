alias start=open

function kcns {
  export namespace="$1"
}

function ensure_namespace() {
  if [ -z "$namespace" ]; then
    echo "namespace not yet set"
    exit 0
  else
    exit 1
  fi
}

function kc {
  ensure_namespace()
  if [ $? -eq 0 ]; then
     return
  fi

  kubectl -n $namespace $*
}

function kcgd {
    kc get deployment
}

function kcgp {
    kc get pods
}

function kcgpw {
    kc get pods -w
}

function kcl {
    kc logs $*
}

function kclf {
    kc logs -f $*
}

function kce {
    kc exec -it $*
}

function kcs {
    kc scale deployment $0 --replicas=$1
}
