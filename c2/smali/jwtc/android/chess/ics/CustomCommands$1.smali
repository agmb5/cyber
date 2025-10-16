.class Ljwtc/android/chess/ics/CustomCommands$1;
.super Ljava/lang/Object;
.source "CustomCommands.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/CustomCommands;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/CustomCommands;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/CustomCommands;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iput p2, p0, Ljwtc/android/chess/ics/CustomCommands$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 50
    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52
    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v1, v1, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget v2, p0, Ljwtc/android/chess/ics/CustomCommands$1;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    const v2, 0x7f0e01c8

    .line 59
    invoke-virtual {v1, v2}, Ljwtc/android/chess/ics/CustomCommands;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v1, Ljwtc/android/chess/ics/CustomCommands$1$1;

    invoke-direct {v1, p0, v0}, Ljwtc/android/chess/ics/CustomCommands$1$1;-><init>(Ljwtc/android/chess/ics/CustomCommands$1;Landroid/widget/EditText;)V

    const v0, 0x7f0e003a

    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
