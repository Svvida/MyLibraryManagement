using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace MyLibraryManagement.Pages
{
    public class PatronAccountModel : PageModel
    {
        public IActionResult OnPost()
        {
            return RedirectToPage("/PatronAccount");
        }

    }
}
