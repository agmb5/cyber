.class Ljwtc/android/chess/start$ChessChannel;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChessChannel"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 433
    iput-object p1, p0, Ljwtc/android/chess/start$ChessChannel;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    const-string v0, "urn:x-cast:nl.jwtc.chess.channel"

    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
