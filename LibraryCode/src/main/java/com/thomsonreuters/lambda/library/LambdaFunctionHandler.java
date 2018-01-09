package com.thomsonreuters.lambda.library;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.thomsonreuters.aws.ec2.IEC2;

public class LambdaFunctionHandler implements RequestHandler<Object, String> {

    @Override
    public String handleRequest(Object input, Context context) {
        context.getLogger().log("Input: " + input);
        IEC2 ec2Env;
        // TODO: implement your handler
        return "Hello from Lambda!";
    }

}
