.class Lcom/chatman/o_/ChatmanSoundboard$3;
.super Ljava/lang/Object;
.source "ChatmanSoundboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chatman/o_/ChatmanSoundboard;->chooseTheme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chatman/o_/ChatmanSoundboard;


# direct methods
.method constructor <init>(Lcom/chatman/o_/ChatmanSoundboard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0, p2}, Lcom/chatman/o_/ChatmanSoundboard;->access$7(Lcom/chatman/o_/ChatmanSoundboard;I)V

    .line 176
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0, v2}, Lcom/chatman/o_/ChatmanSoundboard;->access$8(Lcom/chatman/o_/ChatmanSoundboard;I)V

    .line 177
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0}, Lcom/chatman/o_/ChatmanSoundboard;->access$9(Lcom/chatman/o_/ChatmanSoundboard;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const-string v1, "SHUT UP, MENSLY"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-virtual {v0, v2}, Lcom/chatman/o_/ChatmanSoundboard;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shutup_unlocked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0}, Lcom/chatman/o_/ChatmanSoundboard;->access$10(Lcom/chatman/o_/ChatmanSoundboard;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v1}, Lcom/chatman/o_/ChatmanSoundboard;->access$11(Lcom/chatman/o_/ChatmanSoundboard;)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "Picard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v0}, Lcom/chatman/o_/ChatmanSoundboard;->access$9(Lcom/chatman/o_/ChatmanSoundboard;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const-string v1, "SHUT UP, MENSLY"

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-virtual {v0, v2}, Lcom/chatman/o_/ChatmanSoundboard;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    iget-object v2, p0, Lcom/chatman/o_/ChatmanSoundboard$3;->this$0:Lcom/chatman/o_/ChatmanSoundboard;

    invoke-static {v2}, Lcom/chatman/o_/ChatmanSoundboard;->access$11(Lcom/chatman/o_/ChatmanSoundboard;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    return-void
.end method
