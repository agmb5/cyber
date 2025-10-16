.class Ljwtc/android/chess/ics/CustomCommands$1$1;
.super Ljava/lang/Object;
.source "CustomCommands.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/CustomCommands$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/ics/CustomCommands$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/CustomCommands$1;Landroid/widget/EditText;)V
    .locals 0

    .line 60
    iput-object p1, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iput-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 62
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 64
    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget-object v1, v1, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v1, v1, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget v2, v2, Ljwtc/android/chess/ics/CustomCommands$1;->val$position:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget v1, v1, Ljwtc/android/chess/ics/CustomCommands$1;->val$position:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 67
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$1$1;->this$1:Ljwtc/android/chess/ics/CustomCommands$1;

    iget-object p2, p2, Ljwtc/android/chess/ics/CustomCommands$1;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-static {p2}, Ljwtc/android/chess/ics/CustomCommands;->access$000(Ljwtc/android/chess/ics/CustomCommands;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->invalidateViews()V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
