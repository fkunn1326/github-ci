import { Octokit } from "https://cdn.skypack.dev/@octokit/core";

var token = localStorage.gh_pat
console.log(token)

const octokit = new Octokit({ auth: token });

const start = async function(){
    alert("起動しました")
    const response = await octokit.request('POST /repos/{owner}/{repo}/actions/workflows/{workflow_id}/dispatches', {
        owner: 'fkunn1326',
        repo: 'github-ci',
        workflow_id: 'windows.yml',
        ref: 'main'
    })
};

window.start = start