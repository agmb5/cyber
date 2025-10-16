.class Ljwtc/android/chess/start$1;
.super Ljava/util/TimerTask;
.source "start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/start;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 109
    iput-object p1, p0, Ljwtc/android/chess/start$1;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Ljwtc/android/chess/start$1;->this$0:Ljwtc/android/chess/start;

    invoke-static {v0}, Ljwtc/android/chess/start;->access$000(Ljwtc/android/chess/start;)Ljwtc/chess/JNI;

    move-result-object v1

    invoke-virtual {v1}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljwtc/android/chess/start;->access$100(Ljwtc/android/chess/start;Ljava/lang/String;)V

    return-void
.end method
