from cdktf_cdktf_provider_docker.image import Image
from cdktf_cdktf_provider_docker.container import Container

from helicopyter import HeliStack


def synth(stack: HeliStack):
    stack.provide('docker')

    docker_image = stack.push(Image, 'nginxImage', name='nginx:latest', keep_locally=False)

    stack.push(
        Container,
        'nginxContainer',
        name='tutorial',
        image=docker_image.name,
        ports=[{'internal': 80, 'external': 8000}],
    )
