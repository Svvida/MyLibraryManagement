using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Data.SqlClient;

namespace MyLibraryManagement.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        protected void IndexModel_Load(object sender, EventArgs e)
        {
           
        }

        public IActionResult OnPost()
        {
            return RedirectToPage("/PatronAccount");
        }
    }
}