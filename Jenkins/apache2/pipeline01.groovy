node {

    stage('Checkout') {
       git url: 'https://github.com/Nareshcbit/docker-apache2.git'
   }

   stage('Build') {
       def image = docker.build('nxgcloud/my-apache2')
   }

    stage('Push') {

       docker.withRegistry('https://582340655494.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:ecr_admin') {
           docker.image('nxgcloud/my-apache2').push('latest')
        }
   }

}
