.class Lcom/badlogic/gdx/graphics/Pixmap$1$1;
.super Ljava/lang/Object;
.source "Pixmap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/Pixmap$1;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

.field final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$1;[B)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->val$result:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 175
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->val$result:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>([BII)V

    .line 176
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/Pixmap$1;->val$responseListener:Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;->downloadComplete(Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap$1$1;->this$0:Lcom/badlogic/gdx/graphics/Pixmap$1;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap$1;->failed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
