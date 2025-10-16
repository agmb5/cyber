.class Ljwtc/android/chess/ics/ICSClient$18;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->OnError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSClient;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$18;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1275
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$18;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->finish()V

    return-void
.end method
