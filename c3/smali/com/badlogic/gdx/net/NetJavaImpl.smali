.class public Lcom/badlogic/gdx/net/NetJavaImpl;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    }
.end annotation


# instance fields
.field final connections:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field final listeners:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Lcom/badlogic/gdx/Net$HttpResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    .line 134
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/badlogic/gdx/net/NetJavaImpl$1;

    invoke-direct {v7, p0}, Lcom/badlogic/gdx/net/NetJavaImpl$1;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    move-object v0, v8

    move v2, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 150
    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 151
    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    .line 257
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->cancelled()V

    .line 261
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    :cond_0
    return-void
.end method

.method declared-synchronized getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/Net$HttpResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V
    .locals 1

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p3, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 8

    const-string v0, "HEAD"

    .line 155
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 156
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "can\'t process a HTTP request without URL set"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V

    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v5, "POST"

    .line 166
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PUT"

    .line 167
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PATCH"

    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    const-string v4, "GET"

    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 176
    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 172
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v0, :cond_6

    .line 173
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    :cond_6
    new-instance v0, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 180
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 181
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 182
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getFollowRedirects()Z

    move-result v0

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 185
    invoke-virtual {p0, p1, p2, v5}, Lcom/badlogic/gdx/net/NetJavaImpl;->putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V

    .line 188
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 192
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/badlogic/gdx/net/NetJavaImpl$2;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/net/NetJavaImpl$2;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 248
    :try_start_2
    invoke-interface {p2, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method
