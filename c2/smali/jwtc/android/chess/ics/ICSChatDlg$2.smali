.class Ljwtc/android/chess/ics/ICSChatDlg$2;
.super Ljava/lang/Object;
.source "ICSChatDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSChatDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSChatDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSChatDlg;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSChatDlg$2;->this$0:Ljwtc/android/chess/ics/ICSChatDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSChatDlg$2;->this$0:Ljwtc/android/chess/ics/ICSChatDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSChatDlg;->dismiss()V

    return-void
.end method
