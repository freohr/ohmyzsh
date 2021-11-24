function kc_context_prompt_info(){
    type kubectl 2>&1 > /dev/null || return
    echo "${ZSH_THEME_KCCONTEXT_PREFIX=<}$(grep 'current-context' ~/.kube/config | cut -d' ' -f2)${ZSH_THEME_KCCONTEXT_SUFFIX=>}"
}
