.class public Lcom/example/combination/ApiHelper2;
.super Ljava/lang/Object;
.source "ApiHelper2.java"


# static fields
.field private static INSTANCE:Lretrofit2/Retrofit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lretrofit2/Retrofit;
    .locals 2

    .line 15
    sget-object v0, Lcom/example/combination/ApiHelper2;->INSTANCE:Lretrofit2/Retrofit;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-static {}, Lcom/example/combination/ApiHelper2;->getthis2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 17
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/example/combination/ApiHelper2;->INSTANCE:Lretrofit2/Retrofit;

    .line 20
    :cond_0
    sget-object v0, Lcom/example/combination/ApiHelper2;->INSTANCE:Lretrofit2/Retrofit;

    return-object v0
.end method

.method public static native getthis2()Ljava/lang/String;
.end method
