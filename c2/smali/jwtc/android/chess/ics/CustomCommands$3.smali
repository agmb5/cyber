.class Ljwtc/android/chess/ics/CustomCommands$3;
.super Ljava/lang/Object;
.source "CustomCommands.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/CustomCommands;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/CustomCommands;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/CustomCommands;Landroid/widget/EditText;)V
    .locals 0

    .line 174
    iput-object p1, p0, Ljwtc/android/chess/ics/CustomCommands$3;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iput-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 176
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 178
    iget-object v0, p0, Ljwtc/android/chess/ics/CustomCommands$3;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    iget-object v0, v0, Ljwtc/android/chess/ics/CustomCommands;->_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 179
    iget-object p2, p0, Ljwtc/android/chess/ics/CustomCommands$3;->this$0:Ljwtc/android/chess/ics/CustomCommands;

    invoke-static {p2}, Ljwtc/android/chess/ics/CustomCommands;->access$000(Ljwtc/android/chess/ics/CustomCommands;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->invalidateViews()V

    .line 181
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
